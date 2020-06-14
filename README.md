# SDN_scripts
These shell scripts are used to install and execute **SDN-WISE** and **CORAL-SDN** in a clean ubuntu 16.04 installation.
Check out this repository in the home of your user and then install the implementation you need.

The following three implementations are for **SDN-WISE**:
*  **Java implementation of SDN-WISE:** To install and execute this implementation do the following:
  * 1) Install the needed software: **./install_sdn_wise_java.sh**
  * 2) Start the simulation: **./run_sdn_wise_java.sh**
* **SDN-WISE implementation for controling heterogenus networks:** To install and execute this implementation do the following:
  * 1) Install the needed software: **./install_SDN_WISE_onos.sh**
  * 2) Start all the needed software: **./start_Onos.sh**
    **Note:** After a resent testing we identified that this is not running because a domain used from ONOS is down.
* **Get Started with SDN-WISE:** This is the basic implementation using a Java controler, In order To install and execute this implementation do the following:
  * 1) Install the needed software: **./install_SDN_WISE_simple_controler.sh**
  * 2) Start all the needed software: **./startSDN_Java.sh**

More information regarding **SDN-WISE** can be found at the following [link](https://sdnwiselab.github.io)

The following can be used for **CORAL-SDN:**
* In order to install and execute CORAL-SDN do the following:
 * 1) Install the appropriate software in a vm: **./install_CORAL_SDN.sh**
 * 2) Starte the needed software in the vmL **./run_CORAL.sh**
 
 **Note:** In order to start the dashboard you should  install in Windows node-red and import in the node-red the: node-red.json