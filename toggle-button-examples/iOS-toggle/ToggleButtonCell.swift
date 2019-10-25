// Copyright 2019-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import UIKit

import MaterialComponents.MaterialCards_Theming

class ToggleButtonCell: MDCCardCollectionCell {

  private lazy var imageView: UIImageView = {
    let imageView = UIImageView(frame: CGRect.zero)
    imageView.contentMode = .scaleAspectFill
    imageView.clipsToBounds = true
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()

  func setCardImage(named imageName: String) {

    let bundle = Bundle(for: ToggleButtonCell.self)
    imageView.image  = UIImage(named: imageName, in: bundle, compatibleWith: nil)

    if imageView.superview == nil {
      contentView.addSubview(imageView)
      addConstrains()
    }
  }

  func setCustomToggleButton() {
    let bundle = Bundle(for: ToggleButtonCell.self)
    let selectedIcon = UIImage(named: "selected", in: bundle, compatibleWith: nil)?
      .withRenderingMode(.alwaysTemplate)
    let unselectedIcon = UIImage(named: "unselected", in: bundle, compatibleWith: nil)?
      .withRenderingMode(.alwaysTemplate)

    setImage(selectedIcon, for: .selected)
    setImage(unselectedIcon, for: .normal)
    setImageTintColor(.white, for: .normal)

    isSelectable = true
  }

  func addConstrains() {
    if #available(iOS 11, *) {
      NSLayoutConstraint.activate([
        contentView.leftAnchor.constraint(equalTo: imageView.leftAnchor),
        contentView.rightAnchor.constraint(equalTo: imageView.rightAnchor),
        contentView.topAnchor.constraint(equalTo: imageView.topAnchor),
        contentView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor)])
    } else {
      preiOS11Constraints()
    }
  }

  func preiOS11Constraints() {
    imageView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|",
                                                            options: [],
                                                            metrics: nil,
                                                            views: ["view": contentView]))
    imageView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|",
                                                            options: [],
                                                            metrics: nil,
                                                            views: ["view": contentView]))
  }
}