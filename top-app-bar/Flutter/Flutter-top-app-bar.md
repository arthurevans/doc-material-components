<!--docs:
title: "Material Top App Bar"
layout: detail
section: components
excerpt: "A customizable top app bar component with updated visual styles."
iconId: 
path: /catalog/material-top-app-bar/
-->

**Instructions to authors:**
* _Follow the instructions in each section &ndash; see the [accompanying examples](button-examples) for futher guidance._
* _Delete these instructions before submitting your document_

# Top app bar

The [top app bar](https://material.io/components/app-bars-top/#) displays information and actions relating to the current screen.

There are two types of top app bar:

1. [Regular top app bar](#regular-top-app-bar)
1. [Contextual action bar](#contextual-top-app-bar)
<br>

![Image of regular and contextual app bars](Top-app-bars_types_side-by-side.png)

## Using the top app bar

The top app bar provides content and actions related to the current screen. It’s used for branding, screen titles, navigation, and actions.

A regular top app bar can transform into a contextual action bar.

Before you can use Material buttons, you need to import the Material Components package for Flutter: 
```
package:flutter/material.dart
```

You need to use [`MaterialApp`](https://api.flutter.dev/flutter/material/MaterialApp-class.html).

For more information on getting started with the Material for Flutter, go to the Flutter [Material library](https://api.flutter.dev/flutter/material/material-library.html) page.


### Making the top app bar accessible

_List any accessiblity setting or attributes (such as labels), describe how to use them and link to any guidelines on the m.io site (for example, [how to write a good accessibility label for your component](https://material.io/design/usability/accessibility.html#writing))_



## Regular top app bar

The top app bar provides content and actions related to the current screen. It’s used for branding, screen titles, navigation, and actions.

### Regular top app bar example

`AppBar`
* [Class definition](https://api.flutter.dev/flutter/material/AppBar-class.html)
* [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/app_bar.dart)

The following example shows a top app bar with a page title, a navigation icon, two action icons, and an overflow menu:

![insert screenshot here]()

```
The source code for the regular top app bar should include the following:
* A purple container
* A navigation icon
* A title "Page title" in white
* Two action items:
    * favorite icon
    * search icon
* Overflow menu
* The top app bar should remain in place while the user scrolls

```

### Anatomy and Key properties

![Regular app bar anatomy diagram](assets/top_app_bar_anatomy.png)

1. Container
1. Navigation icon (optional)
1. Title (optional)
1. Action items (optional)
1. Overflow menu (optional)

<b>Container </b>

| &nbsp; | Property |
| --- | --- |
| **Color** | |
| **Stroke color** |  |
| **Stroke width** | |
| **Shape** |  |
| **Elevation** |  |
| **Ripple color** |  |

<b>Navigation icon (optional)</b>

| &nbsp; | Property |
| --- | --- |
| **Icon** |  |
| **Color** | |
| **Size** |  |
| **Gravity** (position relative to text label) |  |
| **Padding** (space between icon and text label) |  |

<b>Title (optional)</b>

| &nbsp; | Property |
| --- | --- |
| **Text label** |  |
| **Color** |  | 
| **Typography** |  |

<b>Action item (optional)</b>

| &nbsp; | Property |
| --- | --- |
| **Icon** | | 
| **Color** | | 
| **Size** | | 
| **Gravity** (position relative to text label) | | 
| **Padding** (space between icon and text label) | |

<b>Overflow menu (optional)</b>

| &nbsp; | Property |
| --- | --- |
| **Icon** |  |
| **Color** | |
| **Size** | | 
| **Gravity** (position relative to text label) | | 
| **Padding** (space between icon and text label) | | 


## Contextual action bar

A top app bar can transform into a contextual action bar to provide contextual actions to selected items. For example, upon user selection of photos from a gallery, the top app bar transforms to a contextual app bar with actions related to the selected photos.

When a top app bar transforms into a contextual action bar, the following changes occur:

* The bar color changes
* Navigation icon is replaced with a close icon
* Top app bar title text converts to contextual action bar text
* Top app bar actions are replaced with contextual actions
* Upon closing, the contextual action bar transforms back into a top app bar.

### Contextual action bar example
`AppBar`
* [Class definition](https://api.flutter.dev/flutter/material/AppBar-class.html)
* [GitHub source](https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/material/app_bar.dart)

The following example shows a contextual action bar with a contextual title, a close icon, two contextual action icons, and an overflow menu:

![insert screenshot here]()

```
The source code for the contextual action bar should switch from the regular app bar example to the 
contextual action bar and include the following:
* A black contextual container color
* A close button icon
* A contextual title that reads "Contextual title" in white
* Two action items:
    * download icon
    * garbage icon
* Overflow menu
* The top app bar should remain in place while the user scrolls

```

### Anatomy and Key properties

![Contextual action bar anatomy diagram](assets/contextual_action_bar_anatomy.png)

1. Close Button
1. Contextual title
1. Contextual action items (optional)
1. Overflow menu (optional)

<b>Close button</b>

| &nbsp; | Property |
| --- | --- |
| **Icon** |  |
| **Color** |  |
| **Size** | |
| **Gravity** (position relative to text label) |  |
| **Padding** (space between icon and text label) |  |

<b>Contextual title</b>

| &nbsp; | Property|
| --- | --- |
| **Text label** |  |
| **Color** |  | 
| **Typography** |  |

<b>Contextual action item (optional)</b>

| &nbsp; | Property |
| --- | --- |
| **Icon** |  |
| **Color** |  |
| **Size** |  |
| **Gravity** (position relative to text label) |  |
| **Padding** (space between icon and text label) |  |

<b>Overflow menu (optional)</b>

| &nbsp; | Property |
| --- | --- |
| **Icon** | | 
| **Color** | | 
| **Size** | | 
| **Gravity** (position relative to text label) | | 
| **Padding** (space between icon and text label) | | 


#### Styles

_If the component API implements multiple types, include any style information that differentiates the types in a table_


## Theming a top app bar

The top app bar supports [Material Theming](https://material.io/components/app-bars-top/#theming) and can be customized in terms of color, typography and shape.

### Top app bar theming example

* Provide a screenshot of the regular app bar that uses the [Shrine](https://material.io/design/material-studies/shrine.html) theme with the following features:
    * title: "Page title" 
    * Two action items:
        * favorite icon
        * search icon
    * Overflow menu
    * The top app bar should remain in place while the user scrolls
* Provide a second screenshot of the contextual app bar that uses the [Shrine](https://material.io/design/material-studies/shrine.html) theme with the following features:
    * title: "Contextual title"
    * Two action items:
        * download icon
        * garbage icon
    * Overflow menu
    * The top app bar should remain in place while the user scrolls


_Provide example code that corresponds to the component type screenshot_
