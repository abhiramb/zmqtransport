zmqtransport
============

A new transport for the Winston logging module.  This transport utilizes ZeroMQ (0MQ) for queuing.  The transport can be used in simultaneously with other Winston transport, or as the sole transport for a logging instance.  Because 0MQ has different runtimes for each of the operating environments we use (Linux, Mac OS X and Windows), the queued logger is able to accommodate the different system




