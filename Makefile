# This target produces both publish/index.html and publish/static.html.
publish/index.html: .github/workflows/render.yml data.yml timeline-visjs.jinja timeline-static.jinja
	act --bind

# Watched the directory for changes, rebuilds if any.
watch:
	while true; do make --silent; sleep 1; done