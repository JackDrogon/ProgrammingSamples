use anyhow::Result;
use serde::{Deserialize, Serialize};
use serde_json;

#[derive(Serialize, Deserialize)]
struct ClusterInfo {
    cluster_id: u64,
    cluster_name: String,
}

#[derive(Serialize, Deserialize)]
struct ClusterMap {
    cluster_map: Vec<ClusterInfo>,
}

fn get_cluster_info() -> Result<ClusterMap> {
    let config = std::fs::read_to_string("cluster.json")?;
    let cluster_map: ClusterMap = serde_json::from_str(&config)?;
    Ok(cluster_map)
}

fn main() {
    match get_cluster_info() {
        Ok(cluster_map) => {
            for cluster in cluster_map.cluster_map {
                println!("Cluster ID: {}", cluster.cluster_id);
                println!("Cluster Name: {}", cluster.cluster_name);
            }
        }
        Err(err) => {
            eprintln!("Error: {}", err);
        }
    }
}
