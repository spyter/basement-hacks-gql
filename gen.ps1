"npx nx g @nx/nest:application --name=hx-iam --directory=apps --projectNameAndRootFormat=derived --strict=true --tags=hx-iam" | Invoke-Expression
"npx nx g @nx/nest:application --name=hx-admin --directory=apps --projectNameAndRootFormat=derived --strict=true --tags=hx-admin" | Invoke-Expression
"npx nx g @nx/nest:application --name=hx-analytics --directory=apps --projectNameAndRootFormat=derived --strict=true --tags=hx-analytics" | Invoke-Expression
"npx nx g @nx/nest:application --name=hx-jobs --directory=apps --projectNameAndRootFormat=derived --strict=true --tags=hx-jobs" | Invoke-Expression
"npx nx g @nx/nest:application --name=hx-calls --directory=apps --projectNameAndRootFormat=derived --strict=true --tags=hx-calls" | Invoke-Expression
"npx nx g @nx/nest:application --name=hx-trips --directory=apps --projectNameAndRootFormat=derived --strict=true --tags=hx-trips" | Invoke-Expression
"npx nx g @nx/nest:application --name=hx-bills --directory=apps --projectNameAndRootFormat=derived --strict=true --tags=hx-bills" | Invoke-Expression
"npx nx g @nx/angular:application --name=hx-web --directory=apps --bundler=esbuild --e2eTestRunner=cypress --ssr=false --backendProject=localhost --style=scss --projectNameAndRootFormat=derived --tags=hx-web" | Invoke-Expression

$apps = @("hx-iam", "hx-admin", "hx-analytics", "hx-jobs", "hx-calls", "hx-trips", "hx-bills")

foreach ($app in $apps) {
  "npx nx g @nrwl/nest:lib --name=feature --directory=libs/$app --buildable=true --projectNameAndRootFormat=derived --tags='$app,feature'" | Invoke-Expression
  "npx nx g @nrwl/nest:lib --name=data-access --directory=libs/$app --buildable=true --projectNameAndRootFormat=derived --tags='$app,data-access'" | Invoke-Expression
  "npx nx g @nrwl/nest:lib --name=shared --directory=libs/$app --buildable=true --projectNameAndRootFormat=derived --tags='$app,shared'" | Invoke-Expression
}

"npx nx g @nx/angular:library --name=feature --buildable=true --directory=libs/hx-web/shell --projectNameAndRootFormat=derived --standalone --style=scss --tags='hx-web,feature'" | Invoke-Expression
"npx nx g @nx/angular:library --name=ui --buildable=true --directory=libs/hx-web/shell --projectNameAndRootFormat=derived --standalone --style=scss --tags='hx-web,ui'" | Invoke-Expression


"npx nx g @nrwl/nest:lib --name=utils --directory=libs/shared/api --buildable=true --projectNameAndRootFormat=derived --tags='shared,utils'" | Invoke-Expression
"npx nx g @nrwl/nest:lib --name=data-access --directory=libs/shared/api --buildable=true --projectNameAndRootFormat=derived --tags='shared,data-access'" | Invoke-Expression
"npx nx g @nx/angular:library --name=ui --buildable=true --directory=libs/shared/web --projectNameAndRootFormat=derived --standalone --style=scss --tags='shared,ui'" | Invoke-Expression
"npx nx g @nx/angular:library --name=utils --buildable=true --directory=libs/shared/web --projectNameAndRootFormat=derived --standalone --style=scss --tags='shared,utils'" | Invoke-Expression
"npx nx g @nx/angular:library --name=data-access --buildable=true --directory=libs/shared/web --projectNameAndRootFormat=derived --standalone --style=scss --tags='shared,data-access'" | Invoke-Expression
