/* this file created on 2015/04/09 */

readme:

do-files in order:

1:
prep_files_to_bring_together.sps

prepare the raw files, changing around the variable names between the two files
then they can be brought together between Venango and the other counties to make comparisons 

2:
prep_files_after_bringing_together.sps
include file='H:\prep_ebpq\do-files\prep_files_after_bringing_together.sps'.

add files together, create variables for the EBPAS, compare the reasons for why not referring for the various "not at all" responses 

3:
within 2, a call to add_ebpas_measures.sps
include file='H:\prep_ebpq\do-files\add_ebpas_measures.sps'.

creating EBPAS measures

4:
within 2, a call to add_whynotatall_measures.sps
include file='H:\prep_ebpq\do-files\add_whynotatall_measures.sps'.

comparing the why "not at all" answers in Venango vs. the other counties

5:
make_histogram_of_how_many_categories_why.sps

makes histograms to compare how many "yes this reason why" answers
are selected within each kind of resource (four types of resources)

This do-file deletes a whole bunch of variables to make the reshape easier.
It wouldn't be good to run this do-file and then try to continue with the analysis. 

6:


Summary statistics
summary_stats_on_info_recd.sps

7: looking over what people wrote in the "other" field
put together some summary statistics

text_mining_of_other_fields.sps

8:
20150420_bring_together_files_from_ORC_and_EBPQ.sps
comparing the results between the ORC and EBPQ--earlier version just checks whether there are responses

later version (20150506_bring_together_files_from_ORC_and_EBPQ.sps) checks what the scores are for the ORC and the EBPAS

plots are in
dotplot_ebpas_r.r  (drawing the multi-county graphs)

describing matches between ORC and EBPQ files
barchart_why_not_match_ebpq_orc.r

describing responses for why "not at all" for the types of resources
make_histogram_of_how_many_categories_why.sps

9:
for making the various charts
draw_philly_charts_for_ebpq_report.r
draw_philly_charts_for_ebpq_report_topo_palette.r
