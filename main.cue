package app

app: {
	name:        "app"
	version:     "1.0.0"
	framework:   "vue"
	language:    "javascript"
	buildSystem: "webpack"

	entry: "./src/main.js"

	transpilation: {
		loader: "babel-loader"

		transpileDependencies: [
			// Add packages that must be transpiled here.
			// Example:
			// "some-package",
		]

		excludeNodeModules: true

		cache: {
			compression: false
			files: [
				"babel.config.js",
				".browserslistrc",
			]
		}
	}

	parallel: {
		enabled: true
		workers: 0 // 0 = automatic/default worker selection
	}

	browsers: {
		target: "defaults"
	}

	modernBuild: false
}

build: {
	entry: app.entry

	loaders: {
		javascript: {
			loader: app.transpilation.loader
			exclude: "/node_modules/"
		}
	}
}

development: {
	framework: app.framework
	hotReload: true
}
