<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>A_PE_dummy_10_x0</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>fifo_A_PE_10_2_x048</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>this</originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>59062784</coreId>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>3</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>8</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_2">
				<Value>
					<Obj>
						<type>0</type>
						<id>3</id>
						<name>br_ln3713</name>
						<fileName>./dut.cpp</fileName>
						<fileDirectory>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</fileDirectory>
						<lineNumber>3713</lineNumber>
						<contextFuncName>A_PE_dummy_10_x0</contextFuncName>
						<contextNormFuncName>A_PE_dummy_10_x0</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="10" tracking_level="0" version="0">
								<first>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</first>
								<second class_id="11" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="12" tracking_level="0" version="0">
										<first class_id="13" tracking_level="0" version="0">
											<first>./dut.cpp</first>
											<second>A_PE_dummy_10_x0</second>
										</first>
										<second>3713</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>20</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.38</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_3">
				<Value>
					<Obj>
						<type>0</type>
						<id>5</id>
						<name>indvar_flatten11</name>
						<fileName>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/ap_int_base.h</fileName>
						<fileDirectory>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</fileDirectory>
						<lineNumber>890</lineNumber>
						<contextFuncName>operator&amp;lt;=&amp;lt;32, true&amp;gt;</contextFuncName>
						<contextNormFuncName>operator_le_32_true</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/ap_int_base.h</first>
											<second>operator&amp;lt;=&amp;lt;32, true&amp;gt;</second>
										</first>
										<second>890</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>113</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>4</count>
					<item_version>0</item_version>
					<item>22</item>
					<item>23</item>
					<item>24</item>
					<item>25</item>
				</oprand_edges>
				<opcode>phi</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_4">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>add_ln890</name>
						<fileName>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/ap_int_base.h</fileName>
						<fileDirectory>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</fileDirectory>
						<lineNumber>890</lineNumber>
						<contextFuncName>operator&amp;lt;=&amp;lt;32, true&amp;gt;</contextFuncName>
						<contextNormFuncName>operator_le_32_true</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/ap_int_base.h</first>
											<second>operator&amp;lt;=&amp;lt;32, true&amp;gt;</second>
										</first>
										<second>890</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>113</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>26</item>
					<item>28</item>
				</oprand_edges>
				<opcode>add</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.78</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>icmp_ln890</name>
						<fileName>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/ap_int_base.h</fileName>
						<fileDirectory>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</fileDirectory>
						<lineNumber>890</lineNumber>
						<contextFuncName>operator&amp;lt;=&amp;lt;32, true&amp;gt;</contextFuncName>
						<contextNormFuncName>operator_le_32_true</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/ap_int_base.h</first>
											<second>operator&amp;lt;=&amp;lt;32, true&amp;gt;</second>
										</first>
										<second>890</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>113</coreId>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>29</item>
					<item>31</item>
				</oprand_edges>
				<opcode>icmp</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.67</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>br_ln890</name>
						<fileName>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/ap_int_base.h</fileName>
						<fileDirectory>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</fileDirectory>
						<lineNumber>890</lineNumber>
						<contextFuncName>operator&amp;lt;=&amp;lt;32, true&amp;gt;</contextFuncName>
						<contextNormFuncName>operator_le_32_true</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/ap_int_base.h</first>
											<second>operator&amp;lt;=&amp;lt;32, true&amp;gt;</second>
										</first>
										<second>890</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>113</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>3</count>
					<item_version>0</item_version>
					<item>32</item>
					<item>33</item>
					<item>34</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>15</id>
						<name>p_0</name>
						<fileName>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h</fileName>
						<fileDirectory>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</fileDirectory>
						<lineNumber>145</lineNumber>
						<contextFuncName>read</contextFuncName>
						<contextNormFuncName>read</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>/home/rcslfpgaserver/Softwares/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/hls_stream_39.h</first>
											<second>read</second>
										</first>
										<second>145</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>0</coreId>
					</Obj>
					<bitwidth>256</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>36</item>
					<item>37</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>1.21</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>16</id>
						<name>br_ln0</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49425744</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>38</item>
				</oprand_edges>
				<opcode>br</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>18</id>
						<name>_ln3724</name>
						<fileName>./dut.cpp</fileName>
						<fileDirectory>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</fileDirectory>
						<lineNumber>3724</lineNumber>
						<contextFuncName>A_PE_dummy_10_x0</contextFuncName>
						<contextNormFuncName>A_PE_dummy_10_x0</contextNormFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>/home/x/linfeng-du/Projects/MFPD/benchmarks/DSETest/AutoBridge/benchmarks/CNN/cnn_auto_nofp_post</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>./dut.cpp</first>
											<second>A_PE_dummy_10_x0</second>
										</first>
										<second>3724</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>3</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_10">
				<Value>
					<Obj>
						<type>2</type>
						<id>21</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>132</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>0</content>
			</item>
			<item class_id_reference="16" object_id="_11">
				<Value>
					<Obj>
						<type>2</type>
						<id>27</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>49</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_12">
				<Value>
					<Obj>
						<type>2</type>
						<id>30</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<contextNormFuncName></contextNormFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<control></control>
						<opType></opType>
						<implIndex></implIndex>
						<coreName></coreName>
						<coreId>132</coreId>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>32768</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_13">
				<Obj>
					<type>3</type>
					<id>4</id>
					<name></name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<coreId>0</coreId>
				</Obj>
				<node_objs>
					<count>1</count>
					<item_version>0</item_version>
					<item>3</item>
				</node_objs>
			</item>
			<item class_id_reference="18" object_id="_14">
				<Obj>
					<type>3</type>
					<id>9</id>
					<name></name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<coreId>14</coreId>
				</Obj>
				<node_objs>
					<count>4</count>
					<item_version>0</item_version>
					<item>5</item>
					<item>6</item>
					<item>7</item>
					<item>8</item>
				</node_objs>
			</item>
			<item class_id_reference="18" object_id="_15">
				<Obj>
					<type>3</type>
					<id>17</id>
					<name>.split4</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<coreId>58716304</coreId>
				</Obj>
				<node_objs>
					<count>2</count>
					<item_version>0</item_version>
					<item>15</item>
					<item>16</item>
				</node_objs>
			</item>
			<item class_id_reference="18" object_id="_16">
				<Obj>
					<type>3</type>
					<id>19</id>
					<name></name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<contextNormFuncName></contextNormFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<control></control>
					<opType></opType>
					<implIndex></implIndex>
					<coreName></coreName>
					<coreId>66347368</coreId>
				</Obj>
				<node_objs>
					<count>1</count>
					<item_version>0</item_version>
					<item>18</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>18</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_17">
				<id>20</id>
				<edge_type>2</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>3</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_18">
				<id>22</id>
				<edge_type>1</edge_type>
				<source_obj>21</source_obj>
				<sink_obj>5</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_19">
				<id>23</id>
				<edge_type>2</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>5</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>24</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>5</sink_obj>
				<is_back_edge>1</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>25</id>
				<edge_type>2</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>5</sink_obj>
				<is_back_edge>1</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>26</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>6</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>28</id>
				<edge_type>1</edge_type>
				<source_obj>27</source_obj>
				<sink_obj>6</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>29</id>
				<edge_type>1</edge_type>
				<source_obj>5</source_obj>
				<sink_obj>7</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>31</id>
				<edge_type>1</edge_type>
				<source_obj>30</source_obj>
				<sink_obj>7</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>33</id>
				<edge_type>2</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>34</id>
				<edge_type>2</edge_type>
				<source_obj>19</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>37</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>15</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>38</id>
				<edge_type>2</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>16</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>89</id>
				<edge_type>2</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>90</id>
				<edge_type>2</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>19</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>91</id>
				<edge_type>2</edge_type>
				<source_obj>9</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>92</id>
				<edge_type>2</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>9</sink_obj>
				<is_back_edge>1</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_35">
			<mId>1</mId>
			<mTag>A_PE_dummy_10_x0</mTag>
			<mNormTag>A_PE_dummy_10_x0</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>3</count>
				<item_version>0</item_version>
				<item>2</item>
				<item>3</item>
				<item>4</item>
			</sub_regions>
			<basic_blocks>
				<count>0</count>
				<item_version>0</item_version>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>32770</mMinLatency>
			<mMaxLatency>32770</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="22" object_id="_36">
			<mId>2</mId>
			<mTag>Entry</mTag>
			<mNormTag>Entry</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>4</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>0</mMinLatency>
			<mMaxLatency>0</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="22" object_id="_37">
			<mId>3</mId>
			<mTag>A_PE_dummy_10_x0_loop_1_A_PE_dummy_10_x0_loop_2_A_PE_dummy_10_x0_loop_3</mTag>
			<mNormTag>A_PE_dummy_10_x0_loop_1_A_PE_dummy_10_x0_loop_2_A_PE_dummy_10_x0_loop_3</mNormTag>
			<mType>1</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>2</count>
				<item_version>0</item_version>
				<item>9</item>
				<item>17</item>
			</basic_blocks>
			<mII>1</mII>
			<mDepth>2</mDepth>
			<mMinTripCount>32768</mMinTripCount>
			<mMaxTripCount>32768</mMaxTripCount>
			<mMinLatency>32768</mMinLatency>
			<mMaxLatency>32768</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
		<item class_id_reference="22" object_id="_38">
			<mId>4</mId>
			<mTag>Return</mTag>
			<mNormTag>Return</mNormTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>19</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>0</mMinLatency>
			<mMaxLatency>0</mMaxLatency>
			<mIsDfPipe>0</mIsDfPipe>
			<mDfPipe class_id="-1"></mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="26" tracking_level="0" version="0">
		<count>8</count>
		<item_version>0</item_version>
		<item class_id="27" tracking_level="0" version="0">
			<first>3</first>
			<second class_id="28" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>5</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>6</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>7</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>1</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>15</first>
			<second>
				<first>2</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>16</first>
			<second>
				<first>2</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>18</first>
			<second>
				<first>3</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="29" tracking_level="0" version="0">
		<count>4</count>
		<item_version>0</item_version>
		<item class_id="30" tracking_level="0" version="0">
			<first>4</first>
			<second class_id="31" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>9</first>
			<second>
				<first>1</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>2</first>
				<second>2</second>
			</second>
		</item>
		<item>
			<first>19</first>
			<second>
				<first>2</first>
				<second>2</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="32" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="33" tracking_level="1" version="0" object_id="_39">
			<region_name>A_PE_dummy_10_x0_loop_1_A_PE_dummy_10_x0_loop_2_A_PE_dummy_10_x0_loop_3</region_name>
			<basic_blocks>
				<count>2</count>
				<item_version>0</item_version>
				<item>9</item>
				<item>17</item>
			</basic_blocks>
			<nodes>
				<count>0</count>
				<item_version>0</item_version>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>8</region_type>
			<interval>1</interval>
			<pipe_depth>2</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="34" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="35" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="36" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="37" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core>
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

