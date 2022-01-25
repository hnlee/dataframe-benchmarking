use datafusion::error::DataFusionError;
use datafusion::prelude::*;
use tokio;

#[tokio::main]
async fn main() -> Result<(), DataFusionError> {
    let mut context = ExecutionContext::new();
    let _dataframe = context
        .read_csv("github-timeline-sample.csv", CsvReadOptions::new())
        .await?;
    Ok(())
}
