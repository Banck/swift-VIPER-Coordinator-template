## How to install

### Manual
Browse to: `~/Library/Developer/Xcode/Templates/` and add "VIPER + Coordinator Module.xctemplate" file. Now you can find your template in Xcode.

## Generated code
This template generates all files that you need to create a new VIPER + Coordinator module.

Copy Coordinator folder, which contains base protocols to your project.

To create new module just call createModule()  static method, which returns UIViewController, from module Configurator. Example:
```
let vc = LoginConfigurator.createModule()
```

To create new module from existing coordinator create module coordinator and pass existing or new router:
```
let navigationController = UINavigationController()
let router = Router(rootController: navigationController)
let coordinator = LoginCoordinator(router: router,
                                   delegate: self)
coordinator.start()
addDependency(coordinator)
```
