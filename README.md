k8s-rails
===========

This is an attempt at dockerizing and k8s-ifiying a rails app.

To run this example, you'll need to have a kubernetes cluster up.

One way is by using minikube:

First, start the cluster by running `minikube start`.

Then, run the `k8s/up.sh` script to bring up the application.

Finally, use your browser or HTTP client of choice to access the application on the IP address returned from the `minikube ip` command.

Hint: use `minikube delete` to stop the cluster and destroy the minikube VM.
