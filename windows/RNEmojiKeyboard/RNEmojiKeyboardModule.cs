using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Com.Reactlibrary.RNEmojiKeyboard
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNEmojiKeyboardModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNEmojiKeyboardModule"/>.
        /// </summary>
        internal RNEmojiKeyboardModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNEmojiKeyboard";
            }
        }
    }
}
