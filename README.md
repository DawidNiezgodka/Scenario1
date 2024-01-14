# Scenario1
The first scenario for validating the CB framework

## Caveat
This is a preview-only repository. To conduct the test, it is necessary to set the appropriate secrets, have a project, and modify certain variables, the values of which have been removed for security reasons.


This repository contains the code for the first benchmark for evaluating the
[CB-Framework](https://github.com/DawidNiezgodka/CB-Framework).

Click [here](https://github.com/DawidNiezgodka/Kafka-bench) for the second part of the benchmark.

The benchmark is based on the following paper:
G. Hesse, C. Matthies and M. Uflacker, "How Fast Can We Insert? An Empirical Performance Evaluation of Apache Kafka," 2020 IEEE 26th International Conference on Parallel and Distributed Systems (ICPADS),
Hong Kong, 2020, pp. 641-648, doi: 10.1109/ICPADS51040.2020.00089.

The accompanying code (https://github.com/guenter-hesse/KafkaAnalysisTools)
was used as a basis for implementing the benchmark.
In this repository, Ansible playbooks from the linked repo are used (in a modified version) to configure and execute the benchmark.
