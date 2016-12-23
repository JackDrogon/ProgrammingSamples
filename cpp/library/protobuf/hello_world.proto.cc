#include <iostream>
#include <map>
#include <functional>
#include "hello_world.pb.h"

using namespace std;


class ProtobufDispatch {
public:
	template<typename MessageType>
	void register_callback(function<void (::google::protobuf::Message*)> callback)
	{
		callbacks_[MessageType::descriptor()] = callback;
	}

	void call(::google::protobuf::Message *msg)
	{
		if (msg) {
			callbacks_[msg->GetDescriptor()](msg);
		}
	}
private:
	map<const ::google::protobuf::Descriptor*, function<void (::google::protobuf::Message*)> > callbacks_;
};

void DealFoo(::google::protobuf::Message *m)
{
	hello_world::foo *msg = static_cast<hello_world::foo *>(m);
	cout << "hello_world::foo => id: " << msg->id() << ", str:" << msg->str() << ", opt:" << msg->opt() << endl;
}

void DealBar(::google::protobuf::Message *m)
{
	hello_world::bar *msg = static_cast<hello_world::bar *>(m);
	cout << "hello_world::bar => age: " << msg->age() << ", name:" << msg->name() << endl;
}

::google::protobuf::Message *create_message(const string &type_name, const string &s)
{
	::google::protobuf::Message *message = NULL;
	const ::google::protobuf::Descriptor *descriptor = ::google::protobuf::DescriptorPool::generated_pool()->FindMessageTypeByName(type_name);
	if (descriptor) {
		const ::google::protobuf::Message *prototype = ::google::protobuf::MessageFactory::generated_factory()->GetPrototype(descriptor);
		if (prototype) {
			message = prototype->New();
		}
	}
	message->ParseFromString(s);

	return message;
}

int main()
{
	ProtobufDispatch pd;
	pd.register_callback<hello_world::foo>(DealFoo);
	pd.register_callback<hello_world::bar>(DealBar);

	// cout << hello_world::foo::descriptor()->full_name() << endl;
	hello_world::foo h;
	h.set_id(5);
	h.set_str("hello world");
	h.set_opt(10);

	string foo_s;
	h.SerializeToString(&foo_s);
	auto message_f = create_message("hello_world.foo", foo_s);
	pd.call(message_f);

	hello_world::bar b;
	b.set_age(20);
	b.set_name("xxx");

	string bar_s;
	b.SerializeToString(&bar_s);
	auto message_b = create_message("hello_world.bar", bar_s);
	pd.call(message_b);

	return 0;
}
