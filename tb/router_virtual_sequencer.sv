
 class router_virtual_sequencer extends uvm_sequencer #(uvm_sequence_item) ;
   
  	`uvm_component_utils(router_virtual_sequencer)

 	source_sequencer s_seqrh[];
	
	destination_sequencer d_seqrh[];

  	router_env_config m_cfg;


// Standard UVM Methods:
 	extern function new(string name = "router_virtual_sequencer",uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	endclass

function router_virtual_sequencer::new(string name="router_virtual_sequencer",uvm_component parent);
	super.new(name,parent);
endfunction



function void router_virtual_sequencer::build_phase(uvm_phase phase);
	
if(!uvm_config_db #(router_env_config)::get(this,"","router_env_config",m_cfg))
	 `uvm_fatal("CONFIG","cannot get() m_cfg from uvm_config_db. Have you set() it?")
    		 
          super.build_phase(phase);
		
	  s_seqrh=new[m_cfg.no_of_sagts];
          d_seqrh=new[m_cfg.no_of_dagts];
endfunction 
