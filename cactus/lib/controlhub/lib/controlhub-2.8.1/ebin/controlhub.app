%% app generated at {2021,6,19} {14,2,17}
{application,controlhub,
             [{description,"Control Hub: multi-client packet routing for IPbus/UDP hardware"},
              {vsn,"2.8.1"},
              {id,[]},
              {modules,[ch_config,ch_device_client,ch_device_client_registry,
                        ch_stats,ch_sup,ch_tcp_listener,
                        ch_transaction_manager,ch_utils,controlhub_app]},
              {registered,[ch_device_client_registry,ch_stats,ch_sup,
                           ch_tcp_listener]},
              {applications,[stdlib,kernel,sasl,observer,syslog,lager_syslog,
                             syntax_tools,compiler,goldrush,lager]},
              {included_applications,[]},
              {env,[{tcp_listen_port,10203},
                    {max_udp_in_flight,16},
                    {device_response_timeout,20},
                    {device_client_shutdown_after,15000}]},
              {maxT,infinity},
              {maxP,infinity},
              {mod,{controlhub_app,[]}}]}.
