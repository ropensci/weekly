RSCRIPT = Rscript --no-init-file

checklist: pkg_versions_prep
	${RSCRIPT} -e 'source("scripts/check_list.R")'

check:
	${RSCRIPT} -e 'source("scripts/check_urls.R")'

citations_count:
	${RSCRIPT} -e 'source("scripts/count_citations.R")'

citations_prep:
	${RSCRIPT} -e 'source("scripts/citations-prep.R")'

pkg_versions_prep:
	${RSCRIPT} -e 'source("scripts/pkg_versions_prep.R")'

pkg_news:
	${RSCRIPT} -e 'source("scripts/generate_pkg_news.R")'

pkg_narrative:
	${RSCRIPT} -e 'source("scripts/generate_pkg_narrative.R")'

two_months:
	${RSCRIPT} -e 'source("scripts/two_months_two_minutes.R")'
