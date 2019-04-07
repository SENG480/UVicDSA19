% errors / warnings by module
-----------------------------


|module                                       |error |warning |refactor |convention |
|--- | --- | --- | --- | --- |
|ray.gcs_utils                                |33.33 |0.39    |0.00     |0.73       |
|ray.experimental.ui                          |14.58 |7.36    |5.07     |5.85       |
|ray.experimental.sgd.util                    |9.38  |0.78    |0.46     |3.80       |
|ray                                          |7.29  |0.00    |0.00     |2.63       |
|ray.worker                                   |5.21  |24.81   |10.14    |7.31       |
|ray.experimental.sgd.tfbench.convnet_builder |5.21  |0.00    |7.37     |1.75       |
|ray.experimental.sgd.modified_allreduce      |3.12  |0.78    |4.15     |4.24       |
|ray.log_monitor                              |2.08  |1.94    |0.46     |1.46       |
|ray.experimental.sgd.mnist_example           |2.08  |0.78    |0.46     |1.32       |
|ray.experimental.sgd.tfbench.test_model      |2.08  |0.39    |0.46     |0.44       |
|ray.services                                 |1.04  |8.53    |7.37     |2.05       |
|ray.monitor                                  |1.04  |6.20    |1.84     |2.92       |
|ray.actor                                    |1.04  |5.43    |6.45     |1.46       |
|ray.experimental.sgd.sgd_worker              |1.04  |2.71    |3.69     |3.22       |
|ray.experimental.state                       |1.04  |2.33    |4.61     |1.90       |
|ray.experimental.sgd.sgd                     |1.04  |1.94    |2.30     |2.34       |
|ray.tempfile_services                        |1.04  |1.16    |0.00     |1.17       |
|ray.signature                                |1.04  |1.16    |0.00     |0.58       |
|ray.experimental.features                    |1.04  |0.78    |0.00     |0.73       |
|ray.experimental.sgd.tfbench.model           |1.04  |0.39    |2.30     |1.32       |
|ray.experimental.queue                       |1.04  |0.39    |0.92     |1.17       |
|ray.experimental.array.remote.linalg         |1.04  |0.39    |0.00     |6.43       |
|ray.test.test_modin                          |1.04  |0.39    |0.00     |0.29       |
|ray.experimental.tfutils                     |1.04  |0.00    |0.92     |0.73       |
|ray.experimental.sgd.tfbench.resnet_model    |1.04  |0.00    |0.00     |2.34       |
|ray.function_manager                         |0.00  |5.43    |4.61     |2.05       |
|ray.test.test_global_state                   |0.00  |2.71    |0.00     |0.88       |
|ray.test.test_ray_init                       |0.00  |2.33    |1.38     |1.17       |
|ray.experimental.array.remote.core           |0.00  |2.33    |0.00     |5.26       |
|ray.node                                     |0.00  |1.55    |2.30     |0.58       |
|ray.profiling                                |0.00  |1.55    |1.84     |0.88       |
|ray.experimental.array.distributed.linalg    |0.00  |1.55    |0.92     |7.46       |
|ray.experimental.array.distributed.core      |0.00  |1.55    |0.46     |5.26       |
|ray.experimental.async_plasma                |0.00  |1.55    |0.00     |0.29       |
|ray.utils                                    |0.00  |1.16    |2.76     |2.49       |
|ray.experimental.sgd.param_server            |0.00  |1.16    |1.38     |1.02       |
|ray.experimental.gcs_flush_policy            |0.00  |1.16    |0.46     |0.29       |
|ray.workers.default_worker                   |0.00  |0.78    |13.36    |0.88       |
|ray.parameter                                |0.00  |0.78    |1.84     |0.44       |
|ray.test.cluster_utils                       |0.00  |0.78    |1.38     |0.44       |
|ray.experimental.async_api                   |0.00  |0.78    |0.46     |1.46       |
|ray.import_thread                            |0.00  |0.78    |0.46     |0.29       |
|ray.ray_constants                            |0.00  |0.78    |0.00     |0.44       |
|ray.memory_monitor                           |0.00  |0.39    |1.38     |0.73       |
|ray.experimental.sgd.model                   |0.00  |0.39    |1.38     |0.15       |
|ray.test.test_queue                          |0.00  |0.39    |0.00     |2.05       |
|ray.experimental.sgd.test_save_and_restore   |0.00  |0.39    |0.00     |0.88       |
|ray.experimental.named_actors                |0.00  |0.39    |0.00     |0.15       |
|ray.experimental.array.remote.__init__       |0.00  |0.39    |0.00     |0.15       |
|ray.remote_function                          |0.00  |0.00    |3.23     |0.29       |
|ray.experimental.sgd.tfbench.model_config    |0.00  |0.00    |0.92     |0.44       |
|ray.experimental.api                         |0.00  |0.00    |0.46     |0.29       |
|ray.test.test_utils                          |0.00  |0.00    |0.00     |1.61       |
|ray.serialization                            |0.00  |0.00    |0.00     |0.88       |
|ray.experimental.sgd.test_sgd                |0.00  |0.00    |0.00     |0.88       |
|ray.internal.internal_api                    |0.00  |0.00    |0.00     |0.29       |
|ray.experimental.internal_kv                 |0.00  |0.00    |0.00     |0.29       |
|ray.experimental.array.remote.random         |0.00  |0.00    |0.00     |0.29       |
|ray.experimental.array.distributed.random    |0.00  |0.00    |0.00     |0.29       |
|ray.internal.__init__                        |0.00  |0.00    |0.00     |0.15       |
|ray.experimental.sgd.__init__                |0.00  |0.00    |0.00     |0.15       |
|ray.experimental.array.distributed.__init__  |0.00  |0.00    |0.00     |0.15       |
|ray.experimental.__init__                    |0.00  |0.00    |0.00     |0.15       |