locals {
  # temp workaround for Azure VM size recommendations being in specific letter case (lowercase not allowed in azure api)
  densify_azure_vmsize_lookup = {
    basic_a0 = "Basic_A0"
    basic_a1 = "Basic_A1"
    basic_a2 = "Basic_A2"
    basic_a3 = "Basic_A3"
    basic_a4 = "Basic_A4"
    standard_a0 = "Standard_A0"
    standard_a1 = "Standard_A1"
    standard_a1_v2 = "Standard_A1_v2"
    standard_a2 = "Standard_A2"
    standard_a2_v2 = "Standard_A2_v2"
    standard_a2m_v2 = "Standard_A2m_v2"
    standard_a3 = "Standard_A3"
    standard_a4 = "Standard_A4"
    standard_a4_v2 = "Standard_A4_v2"
    standard_a4m_v2 = "Standard_A4m_v2"
    standard_a5 = "Standard_A5"
    standard_a6 = "Standard_A6"
    standard_a7 = "Standard_A7"
    standard_a8_v2 = "Standard_A8_v2"
    standard_a8m_v2 = "Standard_A8m_v2"
    standard_b12ms = "Standard_B12ms"
    standard_b16ms = "Standard_B16ms"
    standard_b1ls = "Standard_B1ls"
    standard_b1ms = "Standard_B1ms"
    standard_b1s = "Standard_B1s"
    standard_b20ms = "Standard_B20ms"
    standard_b2ms = "Standard_B2ms"
    standard_b2s = "Standard_B2s"
    standard_b4ms = "Standard_B4ms"
    standard_b8ms = "Standard_B8ms"
    standard_d1 = "Standard_D1"
    standard_d11 = "Standard_D11"
    standard_d11_v2 = "Standard_D11_v2"
    standard_d11_v2_promo = "Standard_D11_v2_Promo"
    standard_d12 = "Standard_D12"
    standard_d12_v2 = "Standard_D12_v2"
    standard_d12_v2_promo = "Standard_D12_v2_Promo"
    standard_d13 = "Standard_D13"
    standard_d13_v2 = "Standard_D13_v2"
    standard_d13_v2_promo = "Standard_D13_v2_Promo"
    standard_d14 = "Standard_D14"
    standard_d14_v2 = "Standard_D14_v2"
    standard_d14_v2_promo = "Standard_D14_v2_Promo"
    standard_d15_v2 = "Standard_D15_v2"
    standard_d16_v3 = "Standard_D16_v3"
    standard_d16_v4 = "Standard_D16_v4"
    standard_d16_v5 = "Standard_D16_v5"
    standard_d16a_v4 = "Standard_D16a_v4"
    standard_d16ads_v5 = "Standard_D16ads_v5"
    standard_d16as_v4 = "Standard_D16as_v4"
    standard_d16as_v5 = "Standard_D16as_v5"
    standard_d16d_v4 = "Standard_D16d_v4"
    standard_d16d_v5 = "Standard_D16d_v5"
    standard_d16ds_v4 = "Standard_D16ds_v4"
    standard_d16ds_v5 = "Standard_D16ds_v5"
    standard_d16s_v3 = "Standard_D16s_v3"
    standard_d16s_v4 = "Standard_D16s_v4"
    standard_d16s_v5 = "Standard_D16s_v5"
    standard_d1_v2 = "Standard_D1_v2"
    standard_d2 = "Standard_D2"
    standard_d2_v2 = "Standard_D2_v2"
    standard_d2_v2_promo = "Standard_D2_v2_Promo"
    standard_d2_v3 = "Standard_D2_v3"
    standard_d2_v4 = "Standard_D2_v4"
    standard_d2_v5 = "Standard_D2_v5"
    standard_d2a_v4 = "Standard_D2a_v4"
    standard_d2ads_v5 = "Standard_D2ads_v5"
    standard_d2as_v4 = "Standard_D2as_v4"
    standard_d2as_v5 = "Standard_D2as_v5"
    standard_d2d_v4 = "Standard_D2d_v4"
    standard_d2d_v5 = "Standard_D2d_v5"
    standard_d2ds_v4 = "Standard_D2ds_v4"
    standard_d2ds_v5 = "Standard_D2ds_v5"
    standard_d2s_v3 = "Standard_D2s_v3"
    standard_d2s_v4 = "Standard_D2s_v4"
    standard_d2s_v5 = "Standard_D2s_v5"
    standard_d3 = "Standard_D3"
    standard_d32_v3 = "Standard_D32_v3"
    standard_d32_v4 = "Standard_D32_v4"
    standard_d32_v5 = "Standard_D32_v5"
    standard_d32a_v4 = "Standard_D32a_v4"
    standard_d32ads_v5 = "Standard_D32ads_v5"
    standard_d32as_v4 = "Standard_D32as_v4"
    standard_d32as_v5 = "Standard_D32as_v5"
    standard_d32d_v4 = "Standard_D32d_v4"
    standard_d32d_v5 = "Standard_D32d_v5"
    standard_d32ds_v4 = "Standard_D32ds_v4"
    standard_d32ds_v5 = "Standard_D32ds_v5"
    standard_d32s_v3 = "Standard_D32s_v3"
    standard_d32s_v4 = "Standard_D32s_v4"
    standard_d32s_v5 = "Standard_D32s_v5"
    standard_d3_v2 = "Standard_D3_v2"
    standard_d3_v2_promo = "Standard_D3_v2_Promo"
    standard_d4 = "Standard_D4"
    standard_d48_v3 = "Standard_D48_v3"
    standard_d48_v4 = "Standard_D48_v4"
    standard_d48_v5 = "Standard_D48_v5"
    standard_d48a_v4 = "Standard_D48a_v4"
    standard_d48ads_v5 = "Standard_D48ads_v5"
    standard_d48as_v4 = "Standard_D48as_v4"
    standard_d48as_v5 = "Standard_D48as_v5"
    standard_d48d_v4 = "Standard_D48d_v4"
    standard_d48d_v5 = "Standard_D48d_v5"
    standard_d48ds_v4 = "Standard_D48ds_v4"
    standard_d48ds_v5 = "Standard_D48ds_v5"
    standard_d48s_v3 = "Standard_D48s_v3"
    standard_d48s_v4 = "Standard_D48s_v4"
    standard_d48s_v5 = "Standard_D48s_v5"
    standard_d4_v2 = "Standard_D4_v2"
    standard_d4_v2_promo = "Standard_D4_v2_Promo"
    standard_d4_v3 = "Standard_D4_v3"
    standard_d4_v4 = "Standard_D4_v4"
    standard_d4_v5 = "Standard_D4_v5"
    standard_d4a_v4 = "Standard_D4a_v4"
    standard_d4ads_v5 = "Standard_D4ads_v5"
    standard_d4as_v4 = "Standard_D4as_v4"
    standard_d4as_v5 = "Standard_D4as_v5"
    standard_d4d_v4 = "Standard_D4d_v4"
    standard_d4d_v5 = "Standard_D4d_v5"
    standard_d4ds_v4 = "Standard_D4ds_v4"
    standard_d4ds_v5 = "Standard_D4ds_v5"
    standard_d4s_v3 = "Standard_D4s_v3"
    standard_d4s_v4 = "Standard_D4s_v4"
    standard_d4s_v5 = "Standard_D4s_v5"
    standard_d5_v2 = "Standard_D5_v2"
    standard_d5_v2_promo = "Standard_D5_v2_Promo"
    standard_d64_v3 = "Standard_D64_v3"
    standard_d64_v4 = "Standard_D64_v4"
    standard_d64_v5 = "Standard_D64_v5"
    standard_d64a_v4 = "Standard_D64a_v4"
    standard_d64ads_v5 = "Standard_D64ads_v5"
    standard_d64as_v4 = "Standard_D64as_v4"
    standard_d64as_v5 = "Standard_D64as_v5"
    standard_d64d_v4 = "Standard_D64d_v4"
    standard_d64d_v5 = "Standard_D64d_v5"
    standard_d64ds_v4 = "Standard_D64ds_v4"
    standard_d64ds_v5 = "Standard_D64ds_v5"
    standard_d64s_v3 = "Standard_D64s_v3"
    standard_d64s_v4 = "Standard_D64s_v4"
    standard_d64s_v5 = "Standard_D64s_v5"
    standard_d8_v3 = "Standard_D8_v3"
    standard_d8_v4 = "Standard_D8_v4"
    standard_d8_v5 = "Standard_D8_v5"
    standard_d8a_v4 = "Standard_D8a_v4"
    standard_d8ads_v5 = "Standard_D8ads_v5"
    standard_d8as_v4 = "Standard_D8as_v4"
    standard_d8as_v5 = "Standard_D8as_v5"
    standard_d8d_v4 = "Standard_D8d_v4"
    standard_d8d_v5 = "Standard_D8d_v5"
    standard_d8ds_v4 = "Standard_D8ds_v4"
    standard_d8ds_v5 = "Standard_D8ds_v5"
    standard_d8s_v3 = "Standard_D8s_v3"
    standard_d8s_v4 = "Standard_D8s_v4"
    standard_d8s_v5 = "Standard_D8s_v5"
    standard_d96_v5 = "Standard_D96_v5"
    standard_d96a_v4 = "Standard_D96a_v4"
    standard_d96ads_v5 = "Standard_D96ads_v5"
    standard_d96as_v4 = "Standard_D96as_v4"
    standard_d96as_v5 = "Standard_D96as_v5"
    standard_d96d_v5 = "Standard_D96d_v5"
    standard_d96ds_v5 = "Standard_D96ds_v5"
    standard_d96s_v5 = "Standard_D96s_v5"
    standard_dc16ads_v5 = "Standard_DC16ads_v5"
    standard_dc16as_v5 = "Standard_DC16as_v5"
    standard_dc16ds_v3 = "Standard_DC16ds_v3"
    standard_dc16s_v3 = "Standard_DC16s_v3"
    standard_dc1ds_v3 = "Standard_DC1ds_v3"
    standard_dc1s_v2 = "Standard_DC1s_v2"
    standard_dc1s_v3 = "Standard_DC1s_v3"
    standard_dc24ds_v3 = "Standard_DC24ds_v3"
    standard_dc24s_v3 = "Standard_DC24s_v3"
    standard_dc2ads_v5 = "Standard_DC2ads_v5"
    standard_dc2as_v5 = "Standard_DC2as_v5"
    standard_dc2ds_v3 = "Standard_DC2ds_v3"
    standard_dc2s = "Standard_DC2s"
    standard_dc2s_v2 = "Standard_DC2s_v2"
    standard_dc2s_v3 = "Standard_DC2s_v3"
    standard_dc32ads_v5 = "Standard_DC32ads_v5"
    standard_dc32as_v5 = "Standard_DC32as_v5"
    standard_dc32ds_v3 = "Standard_DC32ds_v3"
    standard_dc32s_v3 = "Standard_DC32s_v3"
    standard_dc48ads_v5 = "Standard_DC48ads_v5"
    standard_dc48as_v5 = "Standard_DC48as_v5"
    standard_dc48ds_v3 = "Standard_DC48ds_v3"
    standard_dc48s_v3 = "Standard_DC48s_v3"
    standard_dc4ads_v5 = "Standard_DC4ads_v5"
    standard_dc4as_v5 = "Standard_DC4as_v5"
    standard_dc4ds_v3 = "Standard_DC4ds_v3"
    standard_dc4s = "Standard_DC4s"
    standard_dc4s_v2 = "Standard_DC4s_v2"
    standard_dc4s_v3 = "Standard_DC4s_v3"
    standard_dc64ads_v5 = "Standard_DC64ads_v5"
    standard_dc64as_v5 = "Standard_DC64as_v5"
    standard_dc8_v2 = "Standard_DC8_v2"
    standard_dc8ads_v5 = "Standard_DC8ads_v5"
    standard_dc8as_v5 = "Standard_DC8as_v5"
    standard_dc8ds_v3 = "Standard_DC8ds_v3"
    standard_dc8s_v3 = "Standard_DC8s_v3"
    standard_dc96ads_v5 = "Standard_DC96ads_v5"
    standard_dc96as_v5 = "Standard_DC96as_v5"
    standard_ds1 = "Standard_DS1"
    standard_ds11 = "Standard_DS11"
    standard_ds11-1_v2 = "Standard_DS11-1_v2"
    standard_ds11_v2 = "Standard_DS11_v2"
    standard_ds11_v2_promo = "Standard_DS11_v2_Promo"
    standard_ds12 = "Standard_DS12"
    standard_ds12-1_v2 = "Standard_DS12-1_v2"
    standard_ds12-2_v2 = "Standard_DS12-2_v2"
    standard_ds12_v2 = "Standard_DS12_v2"
    standard_ds12_v2_promo = "Standard_DS12_v2_Promo"
    standard_ds13 = "Standard_DS13"
    standard_ds13-2_v2 = "Standard_DS13-2_v2"
    standard_ds13-4_v2 = "Standard_DS13-4_v2"
    standard_ds13_v2 = "Standard_DS13_v2"
    standard_ds13_v2_promo = "Standard_DS13_v2_Promo"
    standard_ds14 = "Standard_DS14"
    standard_ds14-4_v2 = "Standard_DS14-4_v2"
    standard_ds14-8_v2 = "Standard_DS14-8_v2"
    standard_ds14_v2 = "Standard_DS14_v2"
    standard_ds14_v2_promo = "Standard_DS14_v2_Promo"
    standard_ds15_v2 = "Standard_DS15_v2"
    standard_ds1_v2 = "Standard_DS1_v2"
    standard_ds2 = "Standard_DS2"
    standard_ds2_v2 = "Standard_DS2_v2"
    standard_ds2_v2_promo = "Standard_DS2_v2_Promo"
    standard_ds3 = "Standard_DS3"
    standard_ds3_v2 = "Standard_DS3_v2"
    standard_ds3_v2_promo = "Standard_DS3_v2_Promo"
    standard_ds4 = "Standard_DS4"
    standard_ds4_v2 = "Standard_DS4_v2"
    standard_ds4_v2_promo = "Standard_DS4_v2_Promo"
    standard_ds5_v2 = "Standard_DS5_v2"
    standard_ds5_v2_promo = "Standard_DS5_v2_Promo"
    standard_e104i_v5 = "Standard_E104i_v5"
    standard_e104id_v5 = "Standard_E104id_v5"
    standard_e104ids_v5 = "Standard_E104ids_v5"
    standard_e104is_v5 = "Standard_E104is_v5"
    standard_e112iads_v5 = "Standard_E112iads_v5"
    standard_e112ias_v5 = "Standard_E112ias_v5"
    standard_e16-4ads_v5 = "Standard_E16-4ads_v5"
    standard_e16-4as_v4 = "Standard_E16-4as_v4"
    standard_e16-4as_v5 = "Standard_E16-4as_v5"
    standard_e16-4ds_v4 = "Standard_E16-4ds_v4"
    standard_e16-4ds_v5 = "Standard_E16-4ds_v5"
    standard_e16-4s_v3 = "Standard_E16-4s_v3"
    standard_e16-4s_v4 = "Standard_E16-4s_v4"
    standard_e16-4s_v5 = "Standard_E16-4s_v5"
    standard_e16-8ads_v5 = "Standard_E16-8ads_v5"
    standard_e16-8as_v4 = "Standard_E16-8as_v4"
    standard_e16-8as_v5 = "Standard_E16-8as_v5"
    standard_e16-8ds_v4 = "Standard_E16-8ds_v4"
    standard_e16-8ds_v5 = "Standard_E16-8ds_v5"
    standard_e16-8s_v3 = "Standard_E16-8s_v3"
    standard_e16-8s_v4 = "Standard_E16-8s_v4"
    standard_e16-8s_v5 = "Standard_E16-8s_v5"
    standard_e16_v3 = "Standard_E16_v3"
    standard_e16_v4 = "Standard_E16_v4"
    standard_e16_v5 = "Standard_E16_v5"
    standard_e16a_v4 = "Standard_E16a_v4"
    standard_e16ads_v5 = "Standard_E16ads_v5"
    standard_e16as_v4 = "Standard_E16as_v4"
    standard_e16as_v5 = "Standard_E16as_v5"
    standard_e16bds_v5 = "Standard_E16bds_v5"
    standard_e16bs_v5 = "Standard_E16bs_v5"
    standard_e16d_v4 = "Standard_E16d_v4"
    standard_e16d_v5 = "Standard_E16d_v5"
    standard_e16ds_v4 = "Standard_E16ds_v4"
    standard_e16ds_v5 = "Standard_E16ds_v5"
    standard_e16s_v3 = "Standard_E16s_v3"
    standard_e16s_v4 = "Standard_E16s_v4"
    standard_e16s_v5 = "Standard_E16s_v5"
    standard_e20_v3 = "Standard_E20_v3"
    standard_e20_v4 = "Standard_E20_v4"
    standard_e20_v5 = "Standard_E20_v5"
    standard_e20a_v4 = "Standard_E20a_v4"
    standard_e20ads_v5 = "Standard_E20ads_v5"
    standard_e20as_v4 = "Standard_E20as_v4"
    standard_e20as_v5 = "Standard_E20as_v5"
    standard_e20d_v4 = "Standard_E20d_v4"
    standard_e20d_v5 = "Standard_E20d_v5"
    standard_e20ds_v4 = "Standard_E20ds_v4"
    standard_e20ds_v5 = "Standard_E20ds_v5"
    standard_e20s_v3 = "Standard_E20s_v3"
    standard_e20s_v4 = "Standard_E20s_v4"
    standard_e20s_v5 = "Standard_E20s_v5"
    standard_e2_v3 = "Standard_E2_v3"
    standard_e2_v4 = "Standard_E2_v4"
    standard_e2_v5 = "Standard_E2_v5"
    standard_e2a_v4 = "Standard_E2a_v4"
    standard_e2ads_v5 = "Standard_E2ads_v5"
    standard_e2as_v4 = "Standard_E2as_v4"
    standard_e2as_v5 = "Standard_E2as_v5"
    standard_e2bds_v5 = "Standard_E2bds_v5"
    standard_e2bs_v5 = "Standard_E2bs_v5"
    standard_e2d_v4 = "Standard_E2d_v4"
    standard_e2d_v5 = "Standard_E2d_v5"
    standard_e2ds_v4 = "Standard_E2ds_v4"
    standard_e2ds_v5 = "Standard_E2ds_v5"
    standard_e2s_v3 = "Standard_E2s_v3"
    standard_e2s_v4 = "Standard_E2s_v4"
    standard_e2s_v5 = "Standard_E2s_v5"
    standard_e32-16ads_v5 = "Standard_E32-16ads_v5"
    standard_e32-16as_v4 = "Standard_E32-16as_v4"
    standard_e32-16as_v5 = "Standard_E32-16as_v5"
    standard_e32-16ds_v4 = "Standard_E32-16ds_v4"
    standard_e32-16ds_v5 = "Standard_E32-16ds_v5"
    standard_e32-16s_v3 = "Standard_E32-16s_v3"
    standard_e32-16s_v4 = "Standard_E32-16s_v4"
    standard_e32-16s_v5 = "Standard_E32-16s_v5"
    standard_e32-8ads_v5 = "Standard_E32-8ads_v5"
    standard_e32-8as_v4 = "Standard_E32-8as_v4"
    standard_e32-8as_v5 = "Standard_E32-8as_v5"
    standard_e32-8ds_v4 = "Standard_E32-8ds_v4"
    standard_e32-8ds_v5 = "Standard_E32-8ds_v5"
    standard_e32-8s_v3 = "Standard_E32-8s_v3"
    standard_e32-8s_v4 = "Standard_E32-8s_v4"
    standard_e32-8s_v5 = "Standard_E32-8s_v5"
    standard_e32_v3 = "Standard_E32_v3"
    standard_e32_v4 = "Standard_E32_v4"
    standard_e32_v5 = "Standard_E32_v5"
    standard_e32a_v4 = "Standard_E32a_v4"
    standard_e32ads_v5 = "Standard_E32ads_v5"
    standard_e32as_v4 = "Standard_E32as_v4"
    standard_e32as_v5 = "Standard_E32as_v5"
    standard_e32bds_v5 = "Standard_E32bds_v5"
    standard_e32bs_v5 = "Standard_E32bs_v5"
    standard_e32d_v4 = "Standard_E32d_v4"
    standard_e32d_v5 = "Standard_E32d_v5"
    standard_e32ds_v4 = "Standard_E32ds_v4"
    standard_e32ds_v5 = "Standard_E32ds_v5"
    standard_e32s_v3 = "Standard_E32s_v3"
    standard_e32s_v4 = "Standard_E32s_v4"
    standard_e32s_v5 = "Standard_E32s_v5"
    standard_e4-2ads_v5 = "Standard_E4-2ads_v5"
    standard_e4-2as_v4 = "Standard_E4-2as_v4"
    standard_e4-2as_v5 = "Standard_E4-2as_v5"
    standard_e4-2ds_v4 = "Standard_E4-2ds_v4"
    standard_e4-2ds_v5 = "Standard_E4-2ds_v5"
    standard_e4-2s_v3 = "Standard_E4-2s_v3"
    standard_e4-2s_v4 = "Standard_E4-2s_v4"
    standard_e4-2s_v5 = "Standard_E4-2s_v5"
    standard_e48_v3 = "Standard_E48_v3"
    standard_e48_v4 = "Standard_E48_v4"
    standard_e48_v5 = "Standard_E48_v5"
    standard_e48a_v4 = "Standard_E48a_v4"
    standard_e48ads_v5 = "Standard_E48ads_v5"
    standard_e48as_v4 = "Standard_E48as_v4"
    standard_e48as_v5 = "Standard_E48as_v5"
    standard_e48bds_v5 = "Standard_E48bds_v5"
    standard_e48bs_v5 = "Standard_E48bs_v5"
    standard_e48d_v4 = "Standard_E48d_v4"
    standard_e48d_v5 = "Standard_E48d_v5"
    standard_e48ds_v4 = "Standard_E48ds_v4"
    standard_e48ds_v5 = "Standard_E48ds_v5"
    standard_e48s_v3 = "Standard_E48s_v3"
    standard_e48s_v4 = "Standard_E48s_v4"
    standard_e48s_v5 = "Standard_E48s_v5"
    standard_e4_v3 = "Standard_E4_v3"
    standard_e4_v4 = "Standard_E4_v4"
    standard_e4_v5 = "Standard_E4_v5"
    standard_e4a_v4 = "Standard_E4a_v4"
    standard_e4ads_v5 = "Standard_E4ads_v5"
    standard_e4as_v4 = "Standard_E4as_v4"
    standard_e4as_v5 = "Standard_E4as_v5"
    standard_e4bds_v5 = "Standard_E4bds_v5"
    standard_e4bs_v5 = "Standard_E4bs_v5"
    standard_e4d_v4 = "Standard_E4d_v4"
    standard_e4d_v5 = "Standard_E4d_v5"
    standard_e4ds_v4 = "Standard_E4ds_v4"
    standard_e4ds_v5 = "Standard_E4ds_v5"
    standard_e4s_v3 = "Standard_E4s_v3"
    standard_e4s_v4 = "Standard_E4s_v4"
    standard_e4s_v5 = "Standard_E4s_v5"
    standard_e64-16ads_v5 = "Standard_E64-16ads_v5"
    standard_e64-16as_v4 = "Standard_E64-16as_v4"
    standard_e64-16as_v5 = "Standard_E64-16as_v5"
    standard_e64-16ds_v4 = "Standard_E64-16ds_v4"
    standard_e64-16ds_v5 = "Standard_E64-16ds_v5"
    standard_e64-16s_v3 = "Standard_E64-16s_v3"
    standard_e64-16s_v4 = "Standard_E64-16s_v4"
    standard_e64-16s_v5 = "Standard_E64-16s_v5"
    standard_e64-32ads_v5 = "Standard_E64-32ads_v5"
    standard_e64-32as_v4 = "Standard_E64-32as_v4"
    standard_e64-32as_v5 = "Standard_E64-32as_v5"
    standard_e64-32ds_v4 = "Standard_E64-32ds_v4"
    standard_e64-32ds_v5 = "Standard_E64-32ds_v5"
    standard_e64-32s_v3 = "Standard_E64-32s_v3"
    standard_e64-32s_v4 = "Standard_E64-32s_v4"
    standard_e64-32s_v5 = "Standard_E64-32s_v5"
    standard_e64_v3 = "Standard_E64_v3"
    standard_e64_v4 = "Standard_E64_v4"
    standard_e64_v5 = "Standard_E64_v5"
    standard_e64a_v4 = "Standard_E64a_v4"
    standard_e64ads_v5 = "Standard_E64ads_v5"
    standard_e64as_v4 = "Standard_E64as_v4"
    standard_e64as_v5 = "Standard_E64as_v5"
    standard_e64bds_v5 = "Standard_E64bds_v5"
    standard_e64bs_v5 = "Standard_E64bs_v5"
    standard_e64d_v4 = "Standard_E64d_v4"
    standard_e64d_v5 = "Standard_E64d_v5"
    standard_e64ds_v4 = "Standard_E64ds_v4"
    standard_e64ds_v5 = "Standard_E64ds_v5"
    standard_e64i_v3 = "Standard_E64i_v3"
    standard_e64is_v3 = "Standard_E64is_v3"
    standard_e64s_v3 = "Standard_E64s_v3"
    standard_e64s_v4 = "Standard_E64s_v4"
    standard_e64s_v5 = "Standard_E64s_v5"
    standard_e8-2ads_v5 = "Standard_E8-2ads_v5"
    standard_e8-2as_v4 = "Standard_E8-2as_v4"
    standard_e8-2as_v5 = "Standard_E8-2as_v5"
    standard_e8-2ds_v4 = "Standard_E8-2ds_v4"
    standard_e8-2ds_v5 = "Standard_E8-2ds_v5"
    standard_e8-2s_v3 = "Standard_E8-2s_v3"
    standard_e8-2s_v4 = "Standard_E8-2s_v4"
    standard_e8-2s_v5 = "Standard_E8-2s_v5"
    standard_e8-4ads_v5 = "Standard_E8-4ads_v5"
    standard_e8-4as_v4 = "Standard_E8-4as_v4"
    standard_e8-4as_v5 = "Standard_E8-4as_v5"
    standard_e8-4ds_v4 = "Standard_E8-4ds_v4"
    standard_e8-4ds_v5 = "Standard_E8-4ds_v5"
    standard_e8-4s_v3 = "Standard_E8-4s_v3"
    standard_e8-4s_v4 = "Standard_E8-4s_v4"
    standard_e8-4s_v5 = "Standard_E8-4s_v5"
    standard_e80ids_v4 = "Standard_E80ids_v4"
    standard_e80is_v4 = "Standard_E80is_v4"
    standard_e8_v3 = "Standard_E8_v3"
    standard_e8_v4 = "Standard_E8_v4"
    standard_e8_v5 = "Standard_E8_v5"
    standard_e8a_v4 = "Standard_E8a_v4"
    standard_e8ads_v5 = "Standard_E8ads_v5"
    standard_e8as_v4 = "Standard_E8as_v4"
    standard_e8as_v5 = "Standard_E8as_v5"
    standard_e8bds_v5 = "Standard_E8bds_v5"
    standard_e8bs_v5 = "Standard_E8bs_v5"
    standard_e8d_v4 = "Standard_E8d_v4"
    standard_e8d_v5 = "Standard_E8d_v5"
    standard_e8ds_v4 = "Standard_E8ds_v4"
    standard_e8ds_v5 = "Standard_E8ds_v5"
    standard_e8s_v3 = "Standard_E8s_v3"
    standard_e8s_v4 = "Standard_E8s_v4"
    standard_e8s_v5 = "Standard_E8s_v5"
    standard_e96-24ads_v5 = "Standard_E96-24ads_v5"
    standard_e96-24as_v4 = "Standard_E96-24as_v4"
    standard_e96-24as_v5 = "Standard_E96-24as_v5"
    standard_e96-24ds_v5 = "Standard_E96-24ds_v5"
    standard_e96-24s_v5 = "Standard_E96-24s_v5"
    standard_e96-48ads_v5 = "Standard_E96-48ads_v5"
    standard_e96-48as_v4 = "Standard_E96-48as_v4"
    standard_e96-48as_v5 = "Standard_E96-48as_v5"
    standard_e96-48ds_v5 = "Standard_E96-48ds_v5"
    standard_e96-48s_v5 = "Standard_E96-48s_v5"
    standard_e96_v5 = "Standard_E96_v5"
    standard_e96a_v4 = "Standard_E96a_v4"
    standard_e96ads_v5 = "Standard_E96ads_v5"
    standard_e96as_v4 = "Standard_E96as_v4"
    standard_e96as_v5 = "Standard_E96as_v5"
    standard_e96d_v5 = "Standard_E96d_v5"
    standard_e96ds_v5 = "Standard_E96ds_v5"
    standard_e96s_v5 = "Standard_E96s_v5"
    standard_ec16ads_v5 = "Standard_EC16ads_v5"
    standard_ec16as_v5 = "Standard_EC16as_v5"
    standard_ec20ads_v5 = "Standard_EC20ads_v5"
    standard_ec20as_v5 = "Standard_EC20as_v5"
    standard_ec2ads_v5 = "Standard_EC2ads_v5"
    standard_ec2as_v5 = "Standard_EC2as_v5"
    standard_ec32ads_v5 = "Standard_EC32ads_v5"
    standard_ec32as_v5 = "Standard_EC32as_v5"
    standard_ec48ads_v5 = "Standard_EC48ads_v5"
    standard_ec48as_v5 = "Standard_EC48as_v5"
    standard_ec4ads_v5 = "Standard_EC4ads_v5"
    standard_ec4as_v5 = "Standard_EC4as_v5"
    standard_ec64ads_v5 = "Standard_EC64ads_v5"
    standard_ec64as_v5 = "Standard_EC64as_v5"
    standard_ec8ads_v5 = "Standard_EC8ads_v5"
    standard_ec8as_v5 = "Standard_EC8as_v5"
    standard_ec96ads_v5 = "Standard_EC96ads_v5"
    standard_ec96as_v5 = "Standard_EC96as_v5"
    standard_ec96iads_v5 = "Standard_EC96iads_v5"
    standard_ec96ias_v5 = "Standard_EC96ias_v5"
    standard_f1 = "Standard_F1"
    standard_f16 = "Standard_F16"
    standard_f16s = "Standard_F16s"
    standard_f16s_v2 = "Standard_F16s_v2"
    standard_f1s = "Standard_F1s"
    standard_f2 = "Standard_F2"
    standard_f2s = "Standard_F2s"
    standard_f2s_v2 = "Standard_F2s_v2"
    standard_f32s_v2 = "Standard_F32s_v2"
    standard_f4 = "Standard_F4"
    standard_f48s_v2 = "Standard_F48s_v2"
    standard_f4s = "Standard_F4s"
    standard_f4s_v2 = "Standard_F4s_v2"
    standard_f64s_v2 = "Standard_F64s_v2"
    standard_f72s_v2 = "Standard_F72s_v2"
    standard_f8 = "Standard_F8"
    standard_f8s = "Standard_F8s"
    standard_f8s_v2 = "Standard_F8s_v2"
    standard_fx12mds = "Standard_FX12mds"
    standard_fx24mds = "Standard_FX24mds"
    standard_fx36mds = "Standard_FX36mds"
    standard_fx48mds = "Standard_FX48mds"
    standard_fx4mds = "Standard_FX4mds"
    standard_g1 = "Standard_G1"
    standard_g2 = "Standard_G2"
    standard_g3 = "Standard_G3"
    standard_g4 = "Standard_G4"
    standard_g5 = "Standard_G5"
    standard_gs1 = "Standard_GS1"
    standard_gs2 = "Standard_GS2"
    standard_gs3 = "Standard_GS3"
    standard_gs4 = "Standard_GS4"
    standard_gs4-4 = "Standard_GS4-4"
    standard_gs4-8 = "Standard_GS4-8"
    standard_gs5 = "Standard_GS5"
    standard_gs5-16 = "Standard_GS5-16"
    standard_gs5-8 = "Standard_GS5-8"
    standard_h16 = "Standard_H16"
    standard_h16_promo = "Standard_H16_Promo"
    standard_h16m = "Standard_H16m"
    standard_h16m_promo = "Standard_H16m_Promo"
    standard_h16mr = "Standard_H16mr"
    standard_h16mr_promo = "Standard_H16mr_Promo"
    standard_h16r = "Standard_H16r"
    standard_h16r_promo = "Standard_H16r_Promo"
    standard_h8 = "Standard_H8"
    standard_h8_promo = "Standard_H8_Promo"
    standard_h8m = "Standard_H8m"
    standard_h8m_promo = "Standard_H8m_Promo"
    standard_hb120-16rs_v3 = "Standard_HB120-16rs_v3"
    standard_hb120-32rs_v3 = "Standard_HB120-32rs_v3"
    standard_hb120-64rs_v3 = "Standard_HB120-64rs_v3"
    standard_hb120-96rs_v3 = "Standard_HB120-96rs_v3"
    standard_hb120rs_v2 = "Standard_HB120rs_v2"
    standard_hb120rs_v3 = "Standard_HB120rs_v3"
    standard_hb60-15rs = "Standard_HB60-15rs"
    standard_hb60-30rs = "Standard_HB60-30rs"
    standard_hb60-45rs = "Standard_HB60-45rs"
    standard_hb60rs = "Standard_HB60rs"
    standard_hc44-16rs = "Standard_HC44-16rs"
    standard_hc44-32rs = "Standard_HC44-32rs"
    standard_hc44rs = "Standard_HC44rs"
    standard_l16as_v3 = "Standard_L16as_v3"
    standard_l16s = "Standard_L16s"
    standard_l16s_v2 = "Standard_L16s_v2"
    standard_l16s_v3 = "Standard_L16s_v3"
    standard_l32as_v3 = "Standard_L32as_v3"
    standard_l32s = "Standard_L32s"
    standard_l32s_v2 = "Standard_L32s_v2"
    standard_l32s_v3 = "Standard_L32s_v3"
    standard_l48as_v3 = "Standard_L48as_v3"
    standard_l48s_v2 = "Standard_L48s_v2"
    standard_l48s_v3 = "Standard_L48s_v3"
    standard_l4s = "Standard_L4s"
    standard_l64as_v3 = "Standard_L64as_v3"
    standard_l64s_v2 = "Standard_L64s_v2"
    standard_l64s_v3 = "Standard_L64s_v3"
    standard_l80as_v3 = "Standard_L80as_v3"
    standard_l80s_v2 = "Standard_L80s_v2"
    standard_l80s_v3 = "Standard_L80s_v3"
    standard_l8as_v3 = "Standard_L8as_v3"
    standard_l8s = "Standard_L8s"
    standard_l8s_v2 = "Standard_L8s_v2"
    standard_l8s_v3 = "Standard_L8s_v3"
    standard_m128 = "Standard_M128"
    standard_m128-32ms = "Standard_M128-32ms"
    standard_m128-64ms = "Standard_M128-64ms"
    standard_m128dms_v2 = "Standard_M128dms_v2"
    standard_m128ds_v2 = "Standard_M128ds_v2"
    standard_m128m = "Standard_M128m"
    standard_m128ms = "Standard_M128ms"
    standard_m128ms_v2 = "Standard_M128ms_v2"
    standard_m128s = "Standard_M128s"
    standard_m128s_v2 = "Standard_M128s_v2"
    standard_m16-4ms = "Standard_M16-4ms"
    standard_m16-8ms = "Standard_M16-8ms"
    standard_m16ms = "Standard_M16ms"
    standard_m192idms_v2 = "Standard_M192idms_v2"
    standard_m192ids_v2 = "Standard_M192ids_v2"
    standard_m192ims_v2 = "Standard_M192ims_v2"
    standard_m192is_v2 = "Standard_M192is_v2"
    standard_m208ms_v2 = "Standard_M208ms_v2"
    standard_m208s_v2 = "Standard_M208s_v2"
    standard_m32-16ms = "Standard_M32-16ms"
    standard_m32-8ms = "Standard_M32-8ms"
    standard_m32dms_v2 = "Standard_M32dms_v2"
    standard_m32ls = "Standard_M32ls"
    standard_m32ms = "Standard_M32ms"
    standard_m32ms_v2 = "Standard_M32ms_v2"
    standard_m32ts = "Standard_M32ts"
    standard_m416-208ms_v2 = "Standard_M416-208ms_v2"
    standard_m416-208s_v2 = "Standard_M416-208s_v2"
    standard_m416ms_v2 = "Standard_M416ms_v2"
    standard_m416s_v2 = "Standard_M416s_v2"
    standard_m64 = "Standard_M64"
    standard_m64-16ms = "Standard_M64-16ms"
    standard_m64-32ms = "Standard_M64-32ms"
    standard_m64dms_v2 = "Standard_M64dms_v2"
    standard_m64ds_v2 = "Standard_M64ds_v2"
    standard_m64ls = "Standard_M64ls"
    standard_m64m = "Standard_M64m"
    standard_m64ms = "Standard_M64ms"
    standard_m64ms_v2 = "Standard_M64ms_v2"
    standard_m64s = "Standard_M64s"
    standard_m64s_v2 = "Standard_M64s_v2"
    standard_m8-2ms = "Standard_M8-2ms"
    standard_m8-4ms = "Standard_M8-4ms"
    standard_m8ms = "Standard_M8ms"
    standard_nc12 = "Standard_NC12"
    standard_nc12_promo = "Standard_NC12_Promo"
    standard_nc12s_v2 = "Standard_NC12s_v2"
    standard_nc12s_v3 = "Standard_NC12s_v3"
    standard_nc16as_t4_v3 = "Standard_NC16as_T4_v3"
    standard_nc24 = "Standard_NC24"
    standard_nc24_promo = "Standard_NC24_Promo"
    standard_nc24ads_a100_v4 = "Standard_NC24ads_A100_v4"
    standard_nc24r = "Standard_NC24r"
    standard_nc24r_promo = "Standard_NC24r_Promo"
    standard_nc24rs_v2 = "Standard_NC24rs_v2"
    standard_nc24rs_v3 = "Standard_NC24rs_v3"
    standard_nc24s_v2 = "Standard_NC24s_v2"
    standard_nc24s_v3 = "Standard_NC24s_v3"
    standard_nc48ads_a100_v4 = "Standard_NC48ads_A100_v4"
    standard_nc4as_t4_v3 = "Standard_NC4as_T4_v3"
    standard_nc6 = "Standard_NC6"
    standard_nc64as_t4_v3 = "Standard_NC64as_T4_v3"
    standard_nc6_promo = "Standard_NC6_Promo"
    standard_nc6s_v2 = "Standard_NC6s_v2"
    standard_nc6s_v3 = "Standard_NC6s_v3"
    standard_nc8as_t4_v3 = "Standard_NC8as_T4_v3"
    standard_nc96ads_a100_v4 = "Standard_NC96ads_A100_v4"
    standard_nd12s = "Standard_ND12s"
    standard_nd24rs = "Standard_ND24rs"
    standard_nd24s = "Standard_ND24s"
    standard_nd40rs_v2 = "Standard_ND40rs_v2"
    standard_nd6s = "Standard_ND6s"
    standard_nd96amsr_a100_v4 = "Standard_ND96amsr_A100_v4"
    standard_nd96asr_v4 = "Standard_ND96asr_v4"
    standard_nv12 = "Standard_NV12"
    standard_nv12_promo = "Standard_NV12_Promo"
    standard_nv12ads_a10_v5 = "Standard_NV12ads_A10_v5"
    standard_nv12s_v2 = "Standard_NV12s_v2"
    standard_nv12s_v3 = "Standard_NV12s_v3"
    standard_nv16as_v4 = "Standard_NV16as_v4"
    standard_nv18ads_a10_v5 = "Standard_NV18ads_A10_v5"
    standard_nv24 = "Standard_NV24"
    standard_nv24_promo = "Standard_NV24_Promo"
    standard_nv24s_v2 = "Standard_NV24s_v2"
    standard_nv24s_v3 = "Standard_NV24s_v3"
    standard_nv32as_v4 = "Standard_NV32as_v4"
    standard_nv36adms_a10_v5 = "Standard_NV36adms_A10_v5"
    standard_nv36ads_a10_v5 = "Standard_NV36ads_A10_v5"
    standard_nv48s_v3 = "Standard_NV48s_v3"
    standard_nv4as_v4 = "Standard_NV4as_v4"
    standard_nv6 = "Standard_NV6"
    standard_nv6_promo = "Standard_NV6_Promo"
    standard_nv6ads_a10_v5 = "Standard_NV6ads_A10_v5"
    standard_nv6s_v2 = "Standard_NV6s_v2"
    standard_nv72ads_a10_v5 = "Standard_NV72ads_A10_v5"
    standard_nv8as_v4 = "Standard_NV8as_v4"
  }
}