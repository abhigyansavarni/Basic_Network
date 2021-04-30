# Basic_Network

This Example demonstrate a very basic fabric network steup to begin with.

In this example, we have 2 organization with 1 peer in each org.

In the Network directory you will find scripts that is used to bring up the network.

    Dir - Network =>
                    1_start_Net.sh    ---------- this is the script to start the network.
                    2_Install-chaincode.sh ----- this is the script to install & instantiate the chaincode.
                    3_stop_Net.sh -------------- this script is to bring down the network and clean all files created in previous run.
                    4_invoke_func.sh ----------- this script is to invoke functions on peer. (execute this script and open it, 
                                                 copy the function cmds and execute them manually.)
                                                 
   Apart from the above 4 ,other script are helper script.
   
   
   Chaincode - The smart contract is very simple, it will register a record on the network(ledger) and fetch it back.
      
