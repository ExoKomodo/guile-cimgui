(define-module
 (guile-cimgui)
 #:export
 (guile-cimgui/test)
 #:use-module
 (system foreign)
 #:use-module
 (system foreign-library)
 #:use-module
 ((rnrs) #:select (assert)))

(define cimgui (dynamic-link (or (getenv "CIMGUI_LIBRARY_PATH") "cimgui")))

(define (guile-cimgui/test)
  (format #t "[guile-cimgui] Testing guile-cimgui...~%")
  (assert cimgui)
  (format #t "[guile-cimgui] Tests finished successfully~%"))

(define ImVec2 2)
(define ImVec4 4)
(define ImRect 4)
(define bool 7)
(define char 3)

(define igWindowRectRelToAbs
  (foreign-library-function
   cimgui
   "igWindowRectRelToAbs"
   #:return-type
   void
   #:arg-types
   (list '* '* ImRect)))

(define igWindowRectAbsToRel
  (foreign-library-function
   cimgui
   "igWindowRectAbsToRel"
   #:return-type
   void
   #:arg-types
   (list '* '* ImRect)))

(define igWindowPosRelToAbs
  (foreign-library-function
   cimgui
   "igWindowPosRelToAbs"
   #:return-type
   void
   #:arg-types
   (list '* '* ImVec2)))

(define igWindowPosAbsToRel
  (foreign-library-function
   cimgui
   "igWindowPosAbsToRel"
   #:return-type
   void
   #:arg-types
   (list '* '* ImVec2)))

(define igValue
  (foreign-library-function
   cimgui
   "igValue"
   #:return-type
   void
   #:arg-types
   (list '* bool)))

(define igVSliderScalar
  (foreign-library-function
   cimgui
   "igVSliderScalar"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2 -1 '* '* '* '* int)))

(define igVSliderInt
  (foreign-library-function
   cimgui
   "igVSliderInt"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2 '* int int '* int)))

(define igVSliderFloat
  (foreign-library-function
   cimgui
   "igVSliderFloat"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2 '* float float '* int)))

(define igUpdateWindowSkipRefresh
  (foreign-library-function
   cimgui
   "igUpdateWindowSkipRefresh"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igUpdateWindowParentAndRootLinks
  (foreign-library-function
   cimgui
   "igUpdateWindowParentAndRootLinks"
   #:return-type
   void
   #:arg-types
   (list '* int '*)))

(define igUpdatePlatformWindows
  (foreign-library-function
   cimgui
   "igUpdatePlatformWindows"
   #:return-type
   void
   #:arg-types
   (list)))

(define igUpdateMouseMovingWindowNewFrame
  (foreign-library-function
   cimgui
   "igUpdateMouseMovingWindowNewFrame"
   #:return-type
   void
   #:arg-types
   (list)))

(define igUpdateMouseMovingWindowEndFrame
  (foreign-library-function
   cimgui
   "igUpdateMouseMovingWindowEndFrame"
   #:return-type
   void
   #:arg-types
   (list)))

(define igUpdateInputEvents
  (foreign-library-function
   cimgui
   "igUpdateInputEvents"
   #:return-type
   void
   #:arg-types
   (list bool)))

(define igUpdateHoveredWindowAndCaptureFlags
  (foreign-library-function
   cimgui
   "igUpdateHoveredWindowAndCaptureFlags"
   #:return-type
   void
   #:arg-types
   (list)))

(define igUnindent
  (foreign-library-function
   cimgui
   "igUnindent"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igTypingSelectFindNextSingleCharMatch
  (foreign-library-function
   cimgui
   "igTypingSelectFindNextSingleCharMatch"
   #:return-type
   int
   #:arg-types
   (list '* int -1 '* int)))

(define igTypingSelectFindMatch
  (foreign-library-function
   cimgui
   "igTypingSelectFindMatch"
   #:return-type
   int
   #:arg-types
   (list '* int -1 '* int)))

(define igTypingSelectFindBestLeadingMatch
  (foreign-library-function
   cimgui
   "igTypingSelectFindBestLeadingMatch"
   #:return-type
   int
   #:arg-types
   (list '* int -1 '*)))

(define igTreePushOverrideID
  (foreign-library-function
   cimgui
   "igTreePushOverrideID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igTreePush
  (foreign-library-function
   cimgui
   "igTreePush"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTreePop
  (foreign-library-function
   cimgui
   "igTreePop"
   #:return-type
   void
   #:arg-types
   (list)))

(define igTreeNodeV
  (foreign-library-function
   cimgui
   "igTreeNodeV"
   #:return-type
   bool
   #:arg-types
   (list '* '*)))

(define igTreeNodeUpdateNextOpen
  (foreign-library-function
   cimgui
   "igTreeNodeUpdateNextOpen"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int int)))

(define igTreeNodeSetOpen
  (foreign-library-function
   cimgui
   "igTreeNodeSetOpen"
   #:return-type
   void
   #:arg-types
   (list unsigned-int bool)))

(define igTreeNodeGetOpen
  (foreign-library-function
   cimgui
   "igTreeNodeGetOpen"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int)))

(define igTreeNodeExV
  (foreign-library-function
   cimgui
   "igTreeNodeExV"
   #:return-type
   bool
   #:arg-types
   (list '* int '*)))

(define igTreeNodeEx
  (foreign-library-function
   cimgui
   "igTreeNodeEx"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igTreeNodeBehavior
  (foreign-library-function
   cimgui
   "igTreeNodeBehavior"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int int '* '*)))

(define igTreeNode
  (foreign-library-function
   cimgui
   "igTreeNode"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igTranslateWindowsInViewport
  (foreign-library-function
   cimgui
   "igTranslateWindowsInViewport"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2)))

(define igTextWrappedV
  (foreign-library-function
   cimgui
   "igTextWrappedV"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTextWrapped
  (foreign-library-function
   cimgui
   "igTextWrapped"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTextV
  (foreign-library-function
   cimgui
   "igTextV"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTextUnformatted
  (foreign-library-function
   cimgui
   "igTextUnformatted"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igTextLinkOpenURL
  (foreign-library-function
   cimgui
   "igTextLinkOpenURL"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igTextLink
  (foreign-library-function
   cimgui
   "igTextLink"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igTextEx
  (foreign-library-function
   cimgui
   "igTextEx"
   #:return-type
   void
   #:arg-types
   (list '* '* int)))

(define igTextDisabledV
  (foreign-library-function
   cimgui
   "igTextDisabledV"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTextDisabled
  (foreign-library-function
   cimgui
   "igTextDisabled"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTextColoredV
  (foreign-library-function
   cimgui
   "igTextColoredV"
   #:return-type
   void
   #:arg-types
   (list ImVec4 '*)))

(define igTextColored
  (foreign-library-function
   cimgui
   "igTextColored"
   #:return-type
   void
   #:arg-types
   (list ImVec4 '*)))

(define igText
  (foreign-library-function
   cimgui
   "igText"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTestShortcutRouting
  (foreign-library-function
   cimgui
   "igTestShortcutRouting"
   #:return-type
   bool
   #:arg-types
   (list -1 unsigned-int)))

(define igTestKeyOwner
  (foreign-library-function
   cimgui
   "igTestKeyOwner"
   #:return-type
   bool
   #:arg-types
   (list int unsigned-int)))

(define igTempInputText
  (foreign-library-function
   cimgui
   "igTempInputText"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int '* '* int int)))

(define igTempInputScalar
  (foreign-library-function
   cimgui
   "igTempInputScalar"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int '* -1 '* '* '* '*)))

(define igTempInputIsActive
  (foreign-library-function
   cimgui
   "igTempInputIsActive"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int)))

(define igTeleportMousePos
  (foreign-library-function
   cimgui
   "igTeleportMousePos"
   #:return-type
   void
   #:arg-types
   (list ImVec2)))

(define igTableUpdateLayout
  (foreign-library-function
   cimgui
   "igTableUpdateLayout"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableUpdateColumnsWeightFromWidth
  (foreign-library-function
   cimgui
   "igTableUpdateColumnsWeightFromWidth"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableUpdateBorders
  (foreign-library-function
   cimgui
   "igTableUpdateBorders"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableSortSpecsSanitize
  (foreign-library-function
   cimgui
   "igTableSortSpecsSanitize"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableSortSpecsBuild
  (foreign-library-function
   cimgui
   "igTableSortSpecsBuild"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableSetupScrollFreeze
  (foreign-library-function
   cimgui
   "igTableSetupScrollFreeze"
   #:return-type
   void
   #:arg-types
   (list int int)))

(define igTableSetupDrawChannels
  (foreign-library-function
   cimgui
   "igTableSetupDrawChannels"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableSetupColumn
  (foreign-library-function
   cimgui
   "igTableSetupColumn"
   #:return-type
   void
   #:arg-types
   (list '* int float unsigned-int)))

(define igTableSettingsFindByID
  (foreign-library-function
   cimgui
   "igTableSettingsFindByID"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igTableSettingsCreate
  (foreign-library-function
   cimgui
   "igTableSettingsCreate"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int int)))

(define igTableSettingsAddSettingsHandler
  (foreign-library-function
   cimgui
   "igTableSettingsAddSettingsHandler"
   #:return-type
   void
   #:arg-types
   (list)))

(define igTableSetColumnWidthAutoSingle
  (foreign-library-function
   cimgui
   "igTableSetColumnWidthAutoSingle"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igTableSetColumnWidthAutoAll
  (foreign-library-function
   cimgui
   "igTableSetColumnWidthAutoAll"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableSetColumnWidth
  (foreign-library-function
   cimgui
   "igTableSetColumnWidth"
   #:return-type
   void
   #:arg-types
   (list int float)))

(define igTableSetColumnSortDirection
  (foreign-library-function
   cimgui
   "igTableSetColumnSortDirection"
   #:return-type
   void
   #:arg-types
   (list int -1 bool)))

(define igTableSetColumnIndex
  (foreign-library-function
   cimgui
   "igTableSetColumnIndex"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igTableSetColumnEnabled
  (foreign-library-function
   cimgui
   "igTableSetColumnEnabled"
   #:return-type
   void
   #:arg-types
   (list int bool)))

(define igTableSetBgColor
  (foreign-library-function
   cimgui
   "igTableSetBgColor"
   #:return-type
   void
   #:arg-types
   (list -1 unsigned-int int)))

(define igTableSaveSettings
  (foreign-library-function
   cimgui
   "igTableSaveSettings"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableResetSettings
  (foreign-library-function
   cimgui
   "igTableResetSettings"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableRemove
  (foreign-library-function
   cimgui
   "igTableRemove"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTablePushBackgroundChannel
  (foreign-library-function
   cimgui
   "igTablePushBackgroundChannel"
   #:return-type
   void
   #:arg-types
   (list)))

(define igTablePopBackgroundChannel
  (foreign-library-function
   cimgui
   "igTablePopBackgroundChannel"
   #:return-type
   void
   #:arg-types
   (list)))

(define igTableOpenContextMenu
  (foreign-library-function
   cimgui
   "igTableOpenContextMenu"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igTableNextRow
  (foreign-library-function
   cimgui
   "igTableNextRow"
   #:return-type
   void
   #:arg-types
   (list int float)))

(define igTableNextColumn
  (foreign-library-function
   cimgui
   "igTableNextColumn"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igTableMergeDrawChannels
  (foreign-library-function
   cimgui
   "igTableMergeDrawChannels"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableLoadSettings
  (foreign-library-function
   cimgui
   "igTableLoadSettings"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableHeadersRow
  (foreign-library-function
   cimgui
   "igTableHeadersRow"
   #:return-type
   void
   #:arg-types
   (list)))

(define igTableHeader
  (foreign-library-function
   cimgui
   "igTableHeader"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableGetSortSpecs
  (foreign-library-function
   cimgui
   "igTableGetSortSpecs"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igTableGetRowIndex
  (foreign-library-function
   cimgui
   "igTableGetRowIndex"
   #:return-type
   int
   #:arg-types
   (list)))

(define igTableGetInstanceID
  (foreign-library-function
   cimgui
   "igTableGetInstanceID"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* int)))

(define igTableGetInstanceData
  (foreign-library-function
   cimgui
   "igTableGetInstanceData"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define igTableGetHoveredRow
  (foreign-library-function
   cimgui
   "igTableGetHoveredRow"
   #:return-type
   int
   #:arg-types
   (list)))

(define igTableGetHoveredColumn
  (foreign-library-function
   cimgui
   "igTableGetHoveredColumn"
   #:return-type
   int
   #:arg-types
   (list)))

(define igTableGetHeaderRowHeight
  (foreign-library-function
   cimgui
   "igTableGetHeaderRowHeight"
   #:return-type
   float
   #:arg-types
   (list)))

(define igTableGetHeaderAngledMaxLabelWidth
  (foreign-library-function
   cimgui
   "igTableGetHeaderAngledMaxLabelWidth"
   #:return-type
   float
   #:arg-types
   (list)))

(define igTableGetColumnWidthAuto
  (foreign-library-function
   cimgui
   "igTableGetColumnWidthAuto"
   #:return-type
   float
   #:arg-types
   (list '* '*)))

(define igTableGetColumnResizeID
  (foreign-library-function
   cimgui
   "igTableGetColumnResizeID"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* int int)))

(define igTableGetColumnNextSortDirection
  (foreign-library-function
   cimgui
   "igTableGetColumnNextSortDirection"
   #:return-type
   -1
   #:arg-types
   (list '*)))

(define igTableGetColumnName
  (foreign-library-function
   cimgui
   "igTableGetColumnName"
   #:return-type
   '*
   #:arg-types
   (list int)))

(define igTableGetColumnIndex
  (foreign-library-function
   cimgui
   "igTableGetColumnIndex"
   #:return-type
   int
   #:arg-types
   (list)))

(define igTableGetColumnFlags
  (foreign-library-function
   cimgui
   "igTableGetColumnFlags"
   #:return-type
   int
   #:arg-types
   (list int)))

(define igTableGetColumnCount
  (foreign-library-function
   cimgui
   "igTableGetColumnCount"
   #:return-type
   int
   #:arg-types
   (list)))

(define igTableGetCellBgRect
  (foreign-library-function
   cimgui
   "igTableGetCellBgRect"
   #:return-type
   void
   #:arg-types
   (list '* '* int)))

(define igTableGetBoundSettings
  (foreign-library-function
   cimgui
   "igTableGetBoundSettings"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igTableGcCompactTransientBuffers
  (foreign-library-function
   cimgui
   "igTableGcCompactTransientBuffers"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableGcCompactSettings
  (foreign-library-function
   cimgui
   "igTableGcCompactSettings"
   #:return-type
   void
   #:arg-types
   (list)))

(define igTableFixColumnSortDirection
  (foreign-library-function
   cimgui
   "igTableFixColumnSortDirection"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igTableFindByID
  (foreign-library-function
   cimgui
   "igTableFindByID"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igTableEndRow
  (foreign-library-function
   cimgui
   "igTableEndRow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableEndCell
  (foreign-library-function
   cimgui
   "igTableEndCell"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableDrawDefaultContextMenu
  (foreign-library-function
   cimgui
   "igTableDrawDefaultContextMenu"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igTableDrawBorders
  (foreign-library-function
   cimgui
   "igTableDrawBorders"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableCalcMaxColumnWidth
  (foreign-library-function
   cimgui
   "igTableCalcMaxColumnWidth"
   #:return-type
   float
   #:arg-types
   (list '* int)))

(define igTableBeginRow
  (foreign-library-function
   cimgui
   "igTableBeginRow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableBeginInitMemory
  (foreign-library-function
   cimgui
   "igTableBeginInitMemory"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igTableBeginContextMenuPopup
  (foreign-library-function
   cimgui
   "igTableBeginContextMenuPopup"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igTableBeginCell
  (foreign-library-function
   cimgui
   "igTableBeginCell"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igTableBeginApplyRequests
  (foreign-library-function
   cimgui
   "igTableBeginApplyRequests"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igTableAngledHeadersRowEx
  (foreign-library-function
   cimgui
   "igTableAngledHeadersRowEx"
   #:return-type
   void
   #:arg-types
   (list unsigned-int float float '* int)))

(define igTableAngledHeadersRow
  (foreign-library-function
   cimgui
   "igTableAngledHeadersRow"
   #:return-type
   void
   #:arg-types
   (list)))

(define igTabItemLabelAndCloseButton
  (foreign-library-function
   cimgui
   "igTabItemLabelAndCloseButton"
   #:return-type
   void
   #:arg-types
   (list '* ImRect int ImVec2 '* unsigned-int unsigned-int bool '* '*)))

(define igTabItemEx
  (foreign-library-function
   cimgui
   "igTabItemEx"
   #:return-type
   bool
   #:arg-types
   (list '* '* '* int '*)))

(define igTabItemCalcSize
  (foreign-library-function
   cimgui
   "igTabItemCalcSize"
   #:return-type
   void
   #:arg-types
   (list '* '* bool)))

(define igTabItemButton
  (foreign-library-function
   cimgui
   "igTabItemButton"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igTabItemBackground
  (foreign-library-function
   cimgui
   "igTabItemBackground"
   #:return-type
   void
   #:arg-types
   (list '* ImRect int unsigned-int)))

(define igTabBarRemoveTab
  (foreign-library-function
   cimgui
   "igTabBarRemoveTab"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int)))

(define igTabBarQueueReorderFromMousePos
  (foreign-library-function
   cimgui
   "igTabBarQueueReorderFromMousePos"
   #:return-type
   void
   #:arg-types
   (list '* '* ImVec2)))

(define igTabBarQueueReorder
  (foreign-library-function
   cimgui
   "igTabBarQueueReorder"
   #:return-type
   void
   #:arg-types
   (list '* '* int)))

(define igTabBarQueueFocus
  (foreign-library-function
   cimgui
   "igTabBarQueueFocus"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igTabBarProcessReorder
  (foreign-library-function
   cimgui
   "igTabBarProcessReorder"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igTabBarGetTabOrder
  (foreign-library-function
   cimgui
   "igTabBarGetTabOrder"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define igTabBarGetTabName
  (foreign-library-function
   cimgui
   "igTabBarGetTabName"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define igTabBarGetCurrentTab
  (foreign-library-function
   cimgui
   "igTabBarGetCurrentTab"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igTabBarFindTabByOrder
  (foreign-library-function
   cimgui
   "igTabBarFindTabByOrder"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define igTabBarFindTabByID
  (foreign-library-function
   cimgui
   "igTabBarFindTabByID"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int)))

(define igTabBarFindMostRecentlySelectedTabForActiveWindow
  (foreign-library-function
   cimgui
   "igTabBarFindMostRecentlySelectedTabForActiveWindow"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igTabBarCloseTab
  (foreign-library-function
   cimgui
   "igTabBarCloseTab"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igTabBarAddTab
  (foreign-library-function
   cimgui
   "igTabBarAddTab"
   #:return-type
   void
   #:arg-types
   (list '* int '*)))

(define igStyleColorsLight
  (foreign-library-function
   cimgui
   "igStyleColorsLight"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igStyleColorsDark
  (foreign-library-function
   cimgui
   "igStyleColorsDark"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igStyleColorsClassic
  (foreign-library-function
   cimgui
   "igStyleColorsClassic"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igStartMouseMovingWindowOrNode
  (foreign-library-function
   cimgui
   "igStartMouseMovingWindowOrNode"
   #:return-type
   void
   #:arg-types
   (list '* '* bool)))

(define igStartMouseMovingWindow
  (foreign-library-function
   cimgui
   "igStartMouseMovingWindow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSplitterBehavior
  (foreign-library-function
   cimgui
   "igSplitterBehavior"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int -1 '* '* float float float float unsigned-int)))

(define igSpacing
  (foreign-library-function
   cimgui
   "igSpacing"
   #:return-type
   void
   #:arg-types
   (list)))

(define igSmallButton
  (foreign-library-function
   cimgui
   "igSmallButton"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igSliderScalarN
  (foreign-library-function
   cimgui
   "igSliderScalarN"
   #:return-type
   bool
   #:arg-types
   (list '* -1 '* int '* '* '* int)))

(define igSliderScalar
  (foreign-library-function
   cimgui
   "igSliderScalar"
   #:return-type
   bool
   #:arg-types
   (list '* -1 '* '* '* '* int)))

(define igSliderInt4
  (foreign-library-function
   cimgui
   "igSliderInt4"
   #:return-type
   bool
   #:arg-types
   (list '* 32 int int '* int)))

(define igSliderInt3
  (foreign-library-function
   cimgui
   "igSliderInt3"
   #:return-type
   bool
   #:arg-types
   (list '* 24 int int '* int)))

(define igSliderInt2
  (foreign-library-function
   cimgui
   "igSliderInt2"
   #:return-type
   bool
   #:arg-types
   (list '* 16 int int '* int)))

(define igSliderInt
  (foreign-library-function
   cimgui
   "igSliderInt"
   #:return-type
   bool
   #:arg-types
   (list '* '* int int '* int)))

(define igSliderFloat4
  (foreign-library-function
   cimgui
   "igSliderFloat4"
   #:return-type
   bool
   #:arg-types
   (list '* 4 float float '* int)))

(define igSliderFloat3
  (foreign-library-function
   cimgui
   "igSliderFloat3"
   #:return-type
   bool
   #:arg-types
   (list '* 3 float float '* int)))

(define igSliderFloat2
  (foreign-library-function
   cimgui
   "igSliderFloat2"
   #:return-type
   bool
   #:arg-types
   (list '* 2 float float '* int)))

(define igSliderFloat
  (foreign-library-function
   cimgui
   "igSliderFloat"
   #:return-type
   bool
   #:arg-types
   (list '* '* float float '* int)))

(define igSliderBehavior
  (foreign-library-function
   cimgui
   "igSliderBehavior"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int -1 '* '* '* '* int '*)))

(define igSliderAngle
  (foreign-library-function
   cimgui
   "igSliderAngle"
   #:return-type
   bool
   #:arg-types
   (list '* '* float float '* int)))

(define igShutdown
  (foreign-library-function
   cimgui
   "igShutdown"
   #:return-type
   void
   #:arg-types
   (list)))

(define igShrinkWidths
  (foreign-library-function
   cimgui
   "igShrinkWidths"
   #:return-type
   void
   #:arg-types
   (list '* int float)))

(define igShowUserGuide
  (foreign-library-function
   cimgui
   "igShowUserGuide"
   #:return-type
   void
   #:arg-types
   (list)))

(define igShowStyleSelector
  (foreign-library-function
   cimgui
   "igShowStyleSelector"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igShowStyleEditor
  (foreign-library-function
   cimgui
   "igShowStyleEditor"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igShowMetricsWindow
  (foreign-library-function
   cimgui
   "igShowMetricsWindow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igShowIDStackToolWindow
  (foreign-library-function
   cimgui
   "igShowIDStackToolWindow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igShowFontSelector
  (foreign-library-function
   cimgui
   "igShowFontSelector"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igShowFontAtlas
  (foreign-library-function
   cimgui
   "igShowFontAtlas"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igShowDemoWindow
  (foreign-library-function
   cimgui
   "igShowDemoWindow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igShowDebugLogWindow
  (foreign-library-function
   cimgui
   "igShowDebugLogWindow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igShowAboutWindow
  (foreign-library-function
   cimgui
   "igShowAboutWindow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igShortcut
  (foreign-library-function
   cimgui
   "igShortcut"
   #:return-type
   bool
   #:arg-types
   (list -1 int)))

(define igShadeVertsTransformPos
  (foreign-library-function
   cimgui
   "igShadeVertsTransformPos"
   #:return-type
   void
   #:arg-types
   (list '* int int ImVec2 float float ImVec2)))

(define igShadeVertsLinearUV
  (foreign-library-function
   cimgui
   "igShadeVertsLinearUV"
   #:return-type
   void
   #:arg-types
   (list '* int int ImVec2 ImVec2 ImVec2 ImVec2 bool)))

(define igShadeVertsLinearColorGradientKeepAlpha
  (foreign-library-function
   cimgui
   "igShadeVertsLinearColorGradientKeepAlpha"
   #:return-type
   void
   #:arg-types
   (list '* int int ImVec2 ImVec2 unsigned-int unsigned-int)))

(define igSetWindowViewport
  (foreign-library-function
   cimgui
   "igSetWindowViewport"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igSetWindowSize
  (foreign-library-function
   cimgui
   "igSetWindowSize"
   #:return-type
   void
   #:arg-types
   (list ImVec2 -1)))

(define igSetWindowPos
  (foreign-library-function
   cimgui
   "igSetWindowPos"
   #:return-type
   void
   #:arg-types
   (list ImVec2 -1)))

(define igSetWindowParentWindowForFocusRoute
  (foreign-library-function
   cimgui
   "igSetWindowParentWindowForFocusRoute"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igSetWindowHitTestHole
  (foreign-library-function
   cimgui
   "igSetWindowHitTestHole"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2)))

(define igSetWindowHiddenAndSkipItemsForCurrentFrame
  (foreign-library-function
   cimgui
   "igSetWindowHiddenAndSkipItemsForCurrentFrame"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetWindowFontScale
  (foreign-library-function
   cimgui
   "igSetWindowFontScale"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igSetWindowFocus
  (foreign-library-function
   cimgui
   "igSetWindowFocus"
   #:return-type
   void
   #:arg-types
   (list)))

(define igSetWindowDock
  (foreign-library-function
   cimgui
   "igSetWindowDock"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int -1)))

(define igSetWindowCollapsed
  (foreign-library-function
   cimgui
   "igSetWindowCollapsed"
   #:return-type
   void
   #:arg-types
   (list bool -1)))

(define igSetWindowClipRectBeforeSetChannel
  (foreign-library-function
   cimgui
   "igSetWindowClipRectBeforeSetChannel"
   #:return-type
   void
   #:arg-types
   (list '* ImRect)))

(define igSetTooltipV
  (foreign-library-function
   cimgui
   "igSetTooltipV"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetTooltip
  (foreign-library-function
   cimgui
   "igSetTooltip"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetTabItemClosed
  (foreign-library-function
   cimgui
   "igSetTabItemClosed"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetStateStorage
  (foreign-library-function
   cimgui
   "igSetStateStorage"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetShortcutRouting
  (foreign-library-function
   cimgui
   "igSetShortcutRouting"
   #:return-type
   bool
   #:arg-types
   (list -1 int unsigned-int)))

(define igSetScrollY
  (foreign-library-function
   cimgui
   "igSetScrollY"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igSetScrollX
  (foreign-library-function
   cimgui
   "igSetScrollX"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igSetScrollHereY
  (foreign-library-function
   cimgui
   "igSetScrollHereY"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igSetScrollHereX
  (foreign-library-function
   cimgui
   "igSetScrollHereX"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igSetScrollFromPosY
  (foreign-library-function
   cimgui
   "igSetScrollFromPosY"
   #:return-type
   void
   #:arg-types
   (list float float)))

(define igSetScrollFromPosX
  (foreign-library-function
   cimgui
   "igSetScrollFromPosX"
   #:return-type
   void
   #:arg-types
   (list float float)))

(define igSetNextWindowViewport
  (foreign-library-function
   cimgui
   "igSetNextWindowViewport"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igSetNextWindowSizeConstraints
  (foreign-library-function
   cimgui
   "igSetNextWindowSizeConstraints"
   #:return-type
   void
   #:arg-types
   (list ImVec2 ImVec2 '* '*)))

(define igSetNextWindowSize
  (foreign-library-function
   cimgui
   "igSetNextWindowSize"
   #:return-type
   void
   #:arg-types
   (list ImVec2 -1)))

(define igSetNextWindowScroll
  (foreign-library-function
   cimgui
   "igSetNextWindowScroll"
   #:return-type
   void
   #:arg-types
   (list ImVec2)))

(define igSetNextWindowRefreshPolicy
  (foreign-library-function
   cimgui
   "igSetNextWindowRefreshPolicy"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igSetNextWindowPos
  (foreign-library-function
   cimgui
   "igSetNextWindowPos"
   #:return-type
   void
   #:arg-types
   (list ImVec2 -1 ImVec2)))

(define igSetNextWindowFocus
  (foreign-library-function
   cimgui
   "igSetNextWindowFocus"
   #:return-type
   void
   #:arg-types
   (list)))

(define igSetNextWindowDockID
  (foreign-library-function
   cimgui
   "igSetNextWindowDockID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int -1)))

(define igSetNextWindowContentSize
  (foreign-library-function
   cimgui
   "igSetNextWindowContentSize"
   #:return-type
   void
   #:arg-types
   (list ImVec2)))

(define igSetNextWindowCollapsed
  (foreign-library-function
   cimgui
   "igSetNextWindowCollapsed"
   #:return-type
   void
   #:arg-types
   (list bool -1)))

(define igSetNextWindowClass
  (foreign-library-function
   cimgui
   "igSetNextWindowClass"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetNextWindowBgAlpha
  (foreign-library-function
   cimgui
   "igSetNextWindowBgAlpha"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igSetNextItemWidth
  (foreign-library-function
   cimgui
   "igSetNextItemWidth"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igSetNextItemStorageID
  (foreign-library-function
   cimgui
   "igSetNextItemStorageID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igSetNextItemShortcut
  (foreign-library-function
   cimgui
   "igSetNextItemShortcut"
   #:return-type
   void
   #:arg-types
   (list -1 int)))

(define igSetNextItemSelectionUserData
  (foreign-library-function
   cimgui
   "igSetNextItemSelectionUserData"
   #:return-type
   void
   #:arg-types
   (list -1)))

(define igSetNextItemRefVal
  (foreign-library-function
   cimgui
   "igSetNextItemRefVal"
   #:return-type
   void
   #:arg-types
   (list -1 '*)))

(define igSetNextItemOpen
  (foreign-library-function
   cimgui
   "igSetNextItemOpen"
   #:return-type
   void
   #:arg-types
   (list bool -1)))

(define igSetNextItemAllowOverlap
  (foreign-library-function
   cimgui
   "igSetNextItemAllowOverlap"
   #:return-type
   void
   #:arg-types
   (list)))

(define igSetNextFrameWantCaptureMouse
  (foreign-library-function
   cimgui
   "igSetNextFrameWantCaptureMouse"
   #:return-type
   void
   #:arg-types
   (list bool)))

(define igSetNextFrameWantCaptureKeyboard
  (foreign-library-function
   cimgui
   "igSetNextFrameWantCaptureKeyboard"
   #:return-type
   void
   #:arg-types
   (list bool)))

(define igSetNavWindow
  (foreign-library-function
   cimgui
   "igSetNavWindow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetNavID
  (foreign-library-function
   cimgui
   "igSetNavID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int -1 unsigned-int ImRect)))

(define igSetNavFocusScope
  (foreign-library-function
   cimgui
   "igSetNavFocusScope"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igSetMouseCursor
  (foreign-library-function
   cimgui
   "igSetMouseCursor"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igSetLastItemData
  (foreign-library-function
   cimgui
   "igSetLastItemData"
   #:return-type
   void
   #:arg-types
   (list unsigned-int int int ImRect)))

(define igSetKeyboardFocusHere
  (foreign-library-function
   cimgui
   "igSetKeyboardFocusHere"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igSetKeyOwnersForKeyChord
  (foreign-library-function
   cimgui
   "igSetKeyOwnersForKeyChord"
   #:return-type
   void
   #:arg-types
   (list -1 unsigned-int int)))

(define igSetKeyOwner
  (foreign-library-function
   cimgui
   "igSetKeyOwner"
   #:return-type
   void
   #:arg-types
   (list int unsigned-int int)))

(define igSetItemTooltipV
  (foreign-library-function
   cimgui
   "igSetItemTooltipV"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetItemTooltip
  (foreign-library-function
   cimgui
   "igSetItemTooltip"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetItemKeyOwner
  (foreign-library-function
   cimgui
   "igSetItemKeyOwner"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igSetItemDefaultFocus
  (foreign-library-function
   cimgui
   "igSetItemDefaultFocus"
   #:return-type
   void
   #:arg-types
   (list)))

(define igSetHoveredID
  (foreign-library-function
   cimgui
   "igSetHoveredID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igSetFocusID
  (foreign-library-function
   cimgui
   "igSetFocusID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int '*)))

(define igSetDragDropPayload
  (foreign-library-function
   cimgui
   "igSetDragDropPayload"
   #:return-type
   bool
   #:arg-types
   (list '* '* size_t -1)))

(define igSetCursorScreenPos
  (foreign-library-function
   cimgui
   "igSetCursorScreenPos"
   #:return-type
   void
   #:arg-types
   (list ImVec2)))

(define igSetCursorPosY
  (foreign-library-function
   cimgui
   "igSetCursorPosY"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igSetCursorPosX
  (foreign-library-function
   cimgui
   "igSetCursorPosX"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igSetCursorPos
  (foreign-library-function
   cimgui
   "igSetCursorPos"
   #:return-type
   void
   #:arg-types
   (list ImVec2)))

(define igSetCurrentViewport
  (foreign-library-function
   cimgui
   "igSetCurrentViewport"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igSetCurrentFont
  (foreign-library-function
   cimgui
   "igSetCurrentFont"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetCurrentContext
  (foreign-library-function
   cimgui
   "igSetCurrentContext"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetColumnWidth
  (foreign-library-function
   cimgui
   "igSetColumnWidth"
   #:return-type
   void
   #:arg-types
   (list int float)))

(define igSetColumnOffset
  (foreign-library-function
   cimgui
   "igSetColumnOffset"
   #:return-type
   void
   #:arg-types
   (list int float)))

(define igSetColorEditOptions
  (foreign-library-function
   cimgui
   "igSetColorEditOptions"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igSetClipboardText
  (foreign-library-function
   cimgui
   "igSetClipboardText"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSetAllocatorFunctions
  (foreign-library-function
   cimgui
   "igSetAllocatorFunctions"
   #:return-type
   void
   #:arg-types
   (list -1 -1 '*)))

(define igSetActiveIdUsingAllKeyboardKeys
  (foreign-library-function
   cimgui
   "igSetActiveIdUsingAllKeyboardKeys"
   #:return-type
   void
   #:arg-types
   (list)))

(define igSetActiveID
  (foreign-library-function
   cimgui
   "igSetActiveID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int '*)))

(define igSeparatorTextEx
  (foreign-library-function
   cimgui
   "igSeparatorTextEx"
   #:return-type
   void
   #:arg-types
   (list unsigned-int '* '* float)))

(define igSeparatorText
  (foreign-library-function
   cimgui
   "igSeparatorText"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSeparatorEx
  (foreign-library-function
   cimgui
   "igSeparatorEx"
   #:return-type
   void
   #:arg-types
   (list int float)))

(define igSeparator
  (foreign-library-function
   cimgui
   "igSeparator"
   #:return-type
   void
   #:arg-types
   (list)))

(define igSelectable
  (foreign-library-function
   cimgui
   "igSelectable"
   #:return-type
   bool
   #:arg-types
   (list '* bool int ImVec2)))

(define igScrollbarEx
  (foreign-library-function
   cimgui
   "igScrollbarEx"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int -1 '* -1 -1 int)))

(define igScrollbar
  (foreign-library-function
   cimgui
   "igScrollbar"
   #:return-type
   void
   #:arg-types
   (list -1)))

(define igScrollToRectEx
  (foreign-library-function
   cimgui
   "igScrollToRectEx"
   #:return-type
   void
   #:arg-types
   (list '* '* ImRect int)))

(define igScrollToRect
  (foreign-library-function
   cimgui
   "igScrollToRect"
   #:return-type
   void
   #:arg-types
   (list '* ImRect int)))

(define igScrollToItem
  (foreign-library-function
   cimgui
   "igScrollToItem"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igScrollToBringRectIntoView
  (foreign-library-function
   cimgui
   "igScrollToBringRectIntoView"
   #:return-type
   void
   #:arg-types
   (list '* ImRect)))

(define igScaleWindowsInViewport
  (foreign-library-function
   cimgui
   "igScaleWindowsInViewport"
   #:return-type
   void
   #:arg-types
   (list '* float)))

(define igSaveIniSettingsToMemory
  (foreign-library-function
   cimgui
   "igSaveIniSettingsToMemory"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igSaveIniSettingsToDisk
  (foreign-library-function
   cimgui
   "igSaveIniSettingsToDisk"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igSameLine
  (foreign-library-function
   cimgui
   "igSameLine"
   #:return-type
   void
   #:arg-types
   (list float float)))

(define igResetMouseDragDelta
  (foreign-library-function
   cimgui
   "igResetMouseDragDelta"
   #:return-type
   void
   #:arg-types
   (list -1)))

(define igRenderTextWrapped
  (foreign-library-function
   cimgui
   "igRenderTextWrapped"
   #:return-type
   void
   #:arg-types
   (list ImVec2 '* '* float)))

(define igRenderTextEllipsis
  (foreign-library-function
   cimgui
   "igRenderTextEllipsis"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 float float '* '* '*)))

(define igRenderTextClippedEx
  (foreign-library-function
   cimgui
   "igRenderTextClippedEx"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 '* '* '* ImVec2 '*)))

(define igRenderTextClipped
  (foreign-library-function
   cimgui
   "igRenderTextClipped"
   #:return-type
   void
   #:arg-types
   (list ImVec2 ImVec2 '* '* '* ImVec2 '*)))

(define igRenderText
  (foreign-library-function
   cimgui
   "igRenderText"
   #:return-type
   void
   #:arg-types
   (list ImVec2 '* '* bool)))

(define igRenderRectFilledWithHole
  (foreign-library-function
   cimgui
   "igRenderRectFilledWithHole"
   #:return-type
   void
   #:arg-types
   (list '* ImRect ImRect unsigned-int float)))

(define igRenderRectFilledRangeH
  (foreign-library-function
   cimgui
   "igRenderRectFilledRangeH"
   #:return-type
   void
   #:arg-types
   (list '* ImRect unsigned-int float float float)))

(define igRenderPlatformWindowsDefault
  (foreign-library-function
   cimgui
   "igRenderPlatformWindowsDefault"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igRenderNavHighlight
  (foreign-library-function
   cimgui
   "igRenderNavHighlight"
   #:return-type
   void
   #:arg-types
   (list ImRect unsigned-int int)))

(define igRenderMouseCursor
  (foreign-library-function
   cimgui
   "igRenderMouseCursor"
   #:return-type
   void
   #:arg-types
   (list ImVec2 float int unsigned-int unsigned-int unsigned-int)))

(define igRenderFrameBorder
  (foreign-library-function
   cimgui
   "igRenderFrameBorder"
   #:return-type
   void
   #:arg-types
   (list ImVec2 ImVec2 float)))

(define igRenderFrame
  (foreign-library-function
   cimgui
   "igRenderFrame"
   #:return-type
   void
   #:arg-types
   (list ImVec2 ImVec2 unsigned-int bool float)))

(define igRenderDragDropTargetRect
  (foreign-library-function
   cimgui
   "igRenderDragDropTargetRect"
   #:return-type
   void
   #:arg-types
   (list ImRect ImRect)))

(define igRenderColorRectWithAlphaCheckerboard
  (foreign-library-function
   cimgui
   "igRenderColorRectWithAlphaCheckerboard"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int float ImVec2 float int)))

(define igRenderCheckMark
  (foreign-library-function
   cimgui
   "igRenderCheckMark"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 unsigned-int float)))

(define igRenderBullet
  (foreign-library-function
   cimgui
   "igRenderBullet"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 unsigned-int)))

(define igRenderArrowPointingAt
  (foreign-library-function
   cimgui
   "igRenderArrowPointingAt"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 int unsigned-int)))

(define igRenderArrowDockMenu
  (foreign-library-function
   cimgui
   "igRenderArrowDockMenu"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float unsigned-int)))

(define igRenderArrow
  (foreign-library-function
   cimgui
   "igRenderArrow"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 unsigned-int int float)))

(define igRender
  (foreign-library-function
   cimgui
   "igRender"
   #:return-type
   void
   #:arg-types
   (list)))

(define igRemoveSettingsHandler
  (foreign-library-function
   cimgui
   "igRemoveSettingsHandler"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igRemoveContextHook
  (foreign-library-function
   cimgui
   "igRemoveContextHook"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int)))

(define igRadioButton
  (foreign-library-function
   cimgui
   "igRadioButton"
   #:return-type
   bool
   #:arg-types
   (list '* bool)))

(define igPushTextWrapPos
  (foreign-library-function
   cimgui
   "igPushTextWrapPos"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igPushStyleVarY
  (foreign-library-function
   cimgui
   "igPushStyleVarY"
   #:return-type
   void
   #:arg-types
   (list int float)))

(define igPushStyleVarX
  (foreign-library-function
   cimgui
   "igPushStyleVarX"
   #:return-type
   void
   #:arg-types
   (list int float)))

(define igPushStyleVar
  (foreign-library-function
   cimgui
   "igPushStyleVar"
   #:return-type
   void
   #:arg-types
   (list int float)))

(define igPushStyleColor
  (foreign-library-function
   cimgui
   "igPushStyleColor"
   #:return-type
   void
   #:arg-types
   (list -1 unsigned-int)))

(define igPushOverrideID
  (foreign-library-function
   cimgui
   "igPushOverrideID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igPushMultiItemsWidths
  (foreign-library-function
   cimgui
   "igPushMultiItemsWidths"
   #:return-type
   void
   #:arg-types
   (list int float)))

(define igPushItemWidth
  (foreign-library-function
   cimgui
   "igPushItemWidth"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igPushItemFlag
  (foreign-library-function
   cimgui
   "igPushItemFlag"
   #:return-type
   void
   #:arg-types
   (list int bool)))

(define igPushID
  (foreign-library-function
   cimgui
   "igPushID"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igPushFont
  (foreign-library-function
   cimgui
   "igPushFont"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igPushFocusScope
  (foreign-library-function
   cimgui
   "igPushFocusScope"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igPushColumnsBackground
  (foreign-library-function
   cimgui
   "igPushColumnsBackground"
   #:return-type
   void
   #:arg-types
   (list)))

(define igPushColumnClipRect
  (foreign-library-function
   cimgui
   "igPushColumnClipRect"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igPushClipRect
  (foreign-library-function
   cimgui
   "igPushClipRect"
   #:return-type
   void
   #:arg-types
   (list ImVec2 ImVec2 bool)))

(define igProgressBar
  (foreign-library-function
   cimgui
   "igProgressBar"
   #:return-type
   void
   #:arg-types
   (list float ImVec2 '*)))

(define igPopTextWrapPos
  (foreign-library-function
   cimgui
   "igPopTextWrapPos"
   #:return-type
   void
   #:arg-types
   (list)))

(define igPopStyleVar
  (foreign-library-function
   cimgui
   "igPopStyleVar"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igPopStyleColor
  (foreign-library-function
   cimgui
   "igPopStyleColor"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igPopItemWidth
  (foreign-library-function
   cimgui
   "igPopItemWidth"
   #:return-type
   void
   #:arg-types
   (list)))

(define igPopItemFlag
  (foreign-library-function
   cimgui
   "igPopItemFlag"
   #:return-type
   void
   #:arg-types
   (list)))

(define igPopID
  (foreign-library-function
   cimgui
   "igPopID"
   #:return-type
   void
   #:arg-types
   (list)))

(define igPopFont
  (foreign-library-function
   cimgui
   "igPopFont"
   #:return-type
   void
   #:arg-types
   (list)))

(define igPopFocusScope
  (foreign-library-function
   cimgui
   "igPopFocusScope"
   #:return-type
   void
   #:arg-types
   (list)))

(define igPopColumnsBackground
  (foreign-library-function
   cimgui
   "igPopColumnsBackground"
   #:return-type
   void
   #:arg-types
   (list)))

(define igPopClipRect
  (foreign-library-function
   cimgui
   "igPopClipRect"
   #:return-type
   void
   #:arg-types
   (list)))

(define igPlotLines
  (foreign-library-function
   cimgui
   "igPlotLines"
   #:return-type
   void
   #:arg-types
   (list '* '* int int '* float float ImVec2 int)))

(define igPlotHistogram
  (foreign-library-function
   cimgui
   "igPlotHistogram"
   #:return-type
   void
   #:arg-types
   (list '* '* int int '* float float ImVec2 int)))

(define igPlotEx
  (foreign-library-function
   cimgui
   "igPlotEx"
   #:return-type
   int
   #:arg-types
   (list -1 '* float '* int int '* float float ImVec2)))

(define igOpenPopupOnItemClick
  (foreign-library-function
   cimgui
   "igOpenPopupOnItemClick"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igOpenPopupEx
  (foreign-library-function
   cimgui
   "igOpenPopupEx"
   #:return-type
   void
   #:arg-types
   (list unsigned-int int)))

(define igOpenPopup
  (foreign-library-function
   cimgui
   "igOpenPopup"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igNextColumn
  (foreign-library-function
   cimgui
   "igNextColumn"
   #:return-type
   void
   #:arg-types
   (list)))

(define igNewLine
  (foreign-library-function
   cimgui
   "igNewLine"
   #:return-type
   void
   #:arg-types
   (list)))

(define igNewFrame
  (foreign-library-function
   cimgui
   "igNewFrame"
   #:return-type
   void
   #:arg-types
   (list)))

(define igNavUpdateCurrentWindowIsScrollPushableX
  (foreign-library-function
   cimgui
   "igNavUpdateCurrentWindowIsScrollPushableX"
   #:return-type
   void
   #:arg-types
   (list)))

(define igNavRestoreHighlightAfterMove
  (foreign-library-function
   cimgui
   "igNavRestoreHighlightAfterMove"
   #:return-type
   void
   #:arg-types
   (list)))

(define igNavMoveRequestTryWrapping
  (foreign-library-function
   cimgui
   "igNavMoveRequestTryWrapping"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igNavMoveRequestSubmit
  (foreign-library-function
   cimgui
   "igNavMoveRequestSubmit"
   #:return-type
   void
   #:arg-types
   (list int int int int)))

(define igNavMoveRequestResolveWithPastTreeNode
  (foreign-library-function
   cimgui
   "igNavMoveRequestResolveWithPastTreeNode"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igNavMoveRequestResolveWithLastItem
  (foreign-library-function
   cimgui
   "igNavMoveRequestResolveWithLastItem"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igNavMoveRequestForward
  (foreign-library-function
   cimgui
   "igNavMoveRequestForward"
   #:return-type
   void
   #:arg-types
   (list int int int int)))

(define igNavMoveRequestCancel
  (foreign-library-function
   cimgui
   "igNavMoveRequestCancel"
   #:return-type
   void
   #:arg-types
   (list)))

(define igNavMoveRequestButNoResultYet
  (foreign-library-function
   cimgui
   "igNavMoveRequestButNoResultYet"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igNavMoveRequestApplyResult
  (foreign-library-function
   cimgui
   "igNavMoveRequestApplyResult"
   #:return-type
   void
   #:arg-types
   (list)))

(define igNavInitWindow
  (foreign-library-function
   cimgui
   "igNavInitWindow"
   #:return-type
   void
   #:arg-types
   (list '* bool)))

(define igNavInitRequestApplyResult
  (foreign-library-function
   cimgui
   "igNavInitRequestApplyResult"
   #:return-type
   void
   #:arg-types
   (list)))

(define igNavHighlightActivated
  (foreign-library-function
   cimgui
   "igNavHighlightActivated"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igNavClearPreferredPosForAxis
  (foreign-library-function
   cimgui
   "igNavClearPreferredPosForAxis"
   #:return-type
   void
   #:arg-types
   (list -1)))

(define igMultiSelectItemHeader
  (foreign-library-function
   cimgui
   "igMultiSelectItemHeader"
   #:return-type
   void
   #:arg-types
   (list unsigned-int '* '*)))

(define igMultiSelectItemFooter
  (foreign-library-function
   cimgui
   "igMultiSelectItemFooter"
   #:return-type
   void
   #:arg-types
   (list unsigned-int '* '*)))

(define igMultiSelectAddSetRange
  (foreign-library-function
   cimgui
   "igMultiSelectAddSetRange"
   #:return-type
   void
   #:arg-types
   (list '* bool int -1 -1)))

(define igMultiSelectAddSetAll
  (foreign-library-function
   cimgui
   "igMultiSelectAddSetAll"
   #:return-type
   void
   #:arg-types
   (list '* bool)))

(define igMouseButtonToKey
  (foreign-library-function
   cimgui
   "igMouseButtonToKey"
   #:return-type
   int
   #:arg-types
   (list -1)))

(define igMenuItemEx
  (foreign-library-function
   cimgui
   "igMenuItemEx"
   #:return-type
   bool
   #:arg-types
   (list '* '* '* bool bool)))

(define igMenuItem
  (foreign-library-function
   cimgui
   "igMenuItem"
   #:return-type
   bool
   #:arg-types
   (list '* '* bool bool)))

(define igMemFree
  (foreign-library-function
   cimgui
   "igMemFree"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igMemAlloc
  (foreign-library-function
   cimgui
   "igMemAlloc"
   #:return-type
   '*
   #:arg-types
   (list size_t)))

(define igMarkItemEdited
  (foreign-library-function
   cimgui
   "igMarkItemEdited"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igMarkIniSettingsDirty
  (foreign-library-function
   cimgui
   "igMarkIniSettingsDirty"
   #:return-type
   void
   #:arg-types
   (list)))

(define igLogToTTY
  (foreign-library-function
   cimgui
   "igLogToTTY"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igLogToFile
  (foreign-library-function
   cimgui
   "igLogToFile"
   #:return-type
   void
   #:arg-types
   (list int '*)))

(define igLogToClipboard
  (foreign-library-function
   cimgui
   "igLogToClipboard"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igLogToBuffer
  (foreign-library-function
   cimgui
   "igLogToBuffer"
   #:return-type
   void
   #:arg-types
   (list int)))

(define igLogTextV
  (foreign-library-function
   cimgui
   "igLogTextV"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igLogText
  (foreign-library-function
   cimgui
   "igLogText"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igLogSetNextTextDecoration
  (foreign-library-function
   cimgui
   "igLogSetNextTextDecoration"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igLogRenderedText
  (foreign-library-function
   cimgui
   "igLogRenderedText"
   #:return-type
   void
   #:arg-types
   (list '* '* '*)))

(define igLogFinish
  (foreign-library-function
   cimgui
   "igLogFinish"
   #:return-type
   void
   #:arg-types
   (list)))

(define igLogButtons
  (foreign-library-function
   cimgui
   "igLogButtons"
   #:return-type
   void
   #:arg-types
   (list)))

(define igLogBegin
  (foreign-library-function
   cimgui
   "igLogBegin"
   #:return-type
   void
   #:arg-types
   (list -1 int)))

(define igLocalizeRegisterEntries
  (foreign-library-function
   cimgui
   "igLocalizeRegisterEntries"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igLocalizeGetMsg
  (foreign-library-function
   cimgui
   "igLocalizeGetMsg"
   #:return-type
   '*
   #:arg-types
   (list -1)))

(define igLoadIniSettingsFromMemory
  (foreign-library-function
   cimgui
   "igLoadIniSettingsFromMemory"
   #:return-type
   void
   #:arg-types
   (list '* size_t)))

(define igLoadIniSettingsFromDisk
  (foreign-library-function
   cimgui
   "igLoadIniSettingsFromDisk"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igListBox
  (foreign-library-function
   cimgui
   "igListBox"
   #:return-type
   bool
   #:arg-types
   (list '* '* -1 int int)))

(define igLabelTextV
  (foreign-library-function
   cimgui
   "igLabelTextV"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igLabelText
  (foreign-library-function
   cimgui
   "igLabelText"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igKeepAliveID
  (foreign-library-function
   cimgui
   "igKeepAliveID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igItemSize
  (foreign-library-function
   cimgui
   "igItemSize"
   #:return-type
   void
   #:arg-types
   (list ImVec2 float)))

(define igItemHoverable
  (foreign-library-function
   cimgui
   "igItemHoverable"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int int)))

(define igItemAdd
  (foreign-library-function
   cimgui
   "igItemAdd"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int '* int)))

(define igIsWindowWithinBeginStackOf
  (foreign-library-function
   cimgui
   "igIsWindowWithinBeginStackOf"
   #:return-type
   bool
   #:arg-types
   (list '* '*)))

(define igIsWindowNavFocusable
  (foreign-library-function
   cimgui
   "igIsWindowNavFocusable"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igIsWindowHovered
  (foreign-library-function
   cimgui
   "igIsWindowHovered"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsWindowFocused
  (foreign-library-function
   cimgui
   "igIsWindowFocused"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsWindowDocked
  (foreign-library-function
   cimgui
   "igIsWindowDocked"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsWindowContentHoverable
  (foreign-library-function
   cimgui
   "igIsWindowContentHoverable"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igIsWindowCollapsed
  (foreign-library-function
   cimgui
   "igIsWindowCollapsed"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsWindowChildOf
  (foreign-library-function
   cimgui
   "igIsWindowChildOf"
   #:return-type
   bool
   #:arg-types
   (list '* '* bool bool)))

(define igIsWindowAppearing
  (foreign-library-function
   cimgui
   "igIsWindowAppearing"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsWindowAbove
  (foreign-library-function
   cimgui
   "igIsWindowAbove"
   #:return-type
   bool
   #:arg-types
   (list '* '*)))

(define igIsRectVisible
  (foreign-library-function
   cimgui
   "igIsRectVisible"
   #:return-type
   bool
   #:arg-types
   (list ImVec2)))

(define igIsPopupOpen
  (foreign-library-function
   cimgui
   "igIsPopupOpen"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igIsNamedKeyOrMod
  (foreign-library-function
   cimgui
   "igIsNamedKeyOrMod"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsNamedKey
  (foreign-library-function
   cimgui
   "igIsNamedKey"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsMouseReleased
  (foreign-library-function
   cimgui
   "igIsMouseReleased"
   #:return-type
   bool
   #:arg-types
   (list -1)))

(define igIsMousePosValid
  (foreign-library-function
   cimgui
   "igIsMousePosValid"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igIsMouseKey
  (foreign-library-function
   cimgui
   "igIsMouseKey"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsMouseHoveringRect
  (foreign-library-function
   cimgui
   "igIsMouseHoveringRect"
   #:return-type
   bool
   #:arg-types
   (list ImVec2 ImVec2 bool)))

(define igIsMouseDragging
  (foreign-library-function
   cimgui
   "igIsMouseDragging"
   #:return-type
   bool
   #:arg-types
   (list -1 float)))

(define igIsMouseDragPastThreshold
  (foreign-library-function
   cimgui
   "igIsMouseDragPastThreshold"
   #:return-type
   bool
   #:arg-types
   (list -1 float)))

(define igIsMouseDown
  (foreign-library-function
   cimgui
   "igIsMouseDown"
   #:return-type
   bool
   #:arg-types
   (list -1)))

(define igIsMouseDoubleClicked
  (foreign-library-function
   cimgui
   "igIsMouseDoubleClicked"
   #:return-type
   bool
   #:arg-types
   (list -1)))

(define igIsMouseClicked
  (foreign-library-function
   cimgui
   "igIsMouseClicked"
   #:return-type
   bool
   #:arg-types
   (list -1 bool)))

(define igIsLegacyKey
  (foreign-library-function
   cimgui
   "igIsLegacyKey"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsLRModKey
  (foreign-library-function
   cimgui
   "igIsLRModKey"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsKeyboardKey
  (foreign-library-function
   cimgui
   "igIsKeyboardKey"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsKeyReleased
  (foreign-library-function
   cimgui
   "igIsKeyReleased"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsKeyPressed
  (foreign-library-function
   cimgui
   "igIsKeyPressed"
   #:return-type
   bool
   #:arg-types
   (list int bool)))

(define igIsKeyDown
  (foreign-library-function
   cimgui
   "igIsKeyDown"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsKeyChordPressed
  (foreign-library-function
   cimgui
   "igIsKeyChordPressed"
   #:return-type
   bool
   #:arg-types
   (list -1)))

(define igIsItemVisible
  (foreign-library-function
   cimgui
   "igIsItemVisible"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsItemToggledSelection
  (foreign-library-function
   cimgui
   "igIsItemToggledSelection"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsItemToggledOpen
  (foreign-library-function
   cimgui
   "igIsItemToggledOpen"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsItemHovered
  (foreign-library-function
   cimgui
   "igIsItemHovered"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsItemFocused
  (foreign-library-function
   cimgui
   "igIsItemFocused"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsItemEdited
  (foreign-library-function
   cimgui
   "igIsItemEdited"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsItemDeactivatedAfterEdit
  (foreign-library-function
   cimgui
   "igIsItemDeactivatedAfterEdit"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsItemDeactivated
  (foreign-library-function
   cimgui
   "igIsItemDeactivated"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsItemClicked
  (foreign-library-function
   cimgui
   "igIsItemClicked"
   #:return-type
   bool
   #:arg-types
   (list -1)))

(define igIsItemActive
  (foreign-library-function
   cimgui
   "igIsItemActive"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsItemActivated
  (foreign-library-function
   cimgui
   "igIsItemActivated"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsGamepadKey
  (foreign-library-function
   cimgui
   "igIsGamepadKey"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsDragDropPayloadBeingAccepted
  (foreign-library-function
   cimgui
   "igIsDragDropPayloadBeingAccepted"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsDragDropActive
  (foreign-library-function
   cimgui
   "igIsDragDropActive"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsClippedEx
  (foreign-library-function
   cimgui
   "igIsClippedEx"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int)))

(define igIsAnyMouseDown
  (foreign-library-function
   cimgui
   "igIsAnyMouseDown"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsAnyItemHovered
  (foreign-library-function
   cimgui
   "igIsAnyItemHovered"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsAnyItemFocused
  (foreign-library-function
   cimgui
   "igIsAnyItemFocused"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsAnyItemActive
  (foreign-library-function
   cimgui
   "igIsAnyItemActive"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igIsAliasKey
  (foreign-library-function
   cimgui
   "igIsAliasKey"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igIsActiveIdUsingNavDir
  (foreign-library-function
   cimgui
   "igIsActiveIdUsingNavDir"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igInvisibleButton
  (foreign-library-function
   cimgui
   "igInvisibleButton"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2 int)))

(define igInputTextWithHint
  (foreign-library-function
   cimgui
   "igInputTextWithHint"
   #:return-type
   bool
   #:arg-types
   (list '* '* '* size_t int '* '*)))

(define igInputTextMultiline
  (foreign-library-function
   cimgui
   "igInputTextMultiline"
   #:return-type
   bool
   #:arg-types
   (list '* '* size_t ImVec2 int '* '*)))

(define igInputTextEx
  (foreign-library-function
   cimgui
   "igInputTextEx"
   #:return-type
   bool
   #:arg-types
   (list '* '* '* int ImVec2 int '* '*)))

(define igInputTextDeactivateHook
  (foreign-library-function
   cimgui
   "igInputTextDeactivateHook"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igInputText
  (foreign-library-function
   cimgui
   "igInputText"
   #:return-type
   bool
   #:arg-types
   (list '* '* size_t int '* '*)))

(define igInputScalarN
  (foreign-library-function
   cimgui
   "igInputScalarN"
   #:return-type
   bool
   #:arg-types
   (list '* -1 '* int '* '* '* int)))

(define igInputScalar
  (foreign-library-function
   cimgui
   "igInputScalar"
   #:return-type
   bool
   #:arg-types
   (list '* -1 '* '* '* '* int)))

(define igInputInt4
  (foreign-library-function
   cimgui
   "igInputInt4"
   #:return-type
   bool
   #:arg-types
   (list '* 32 int)))

(define igInputInt3
  (foreign-library-function
   cimgui
   "igInputInt3"
   #:return-type
   bool
   #:arg-types
   (list '* 24 int)))

(define igInputInt2
  (foreign-library-function
   cimgui
   "igInputInt2"
   #:return-type
   bool
   #:arg-types
   (list '* 16 int)))

(define igInputInt
  (foreign-library-function
   cimgui
   "igInputInt"
   #:return-type
   bool
   #:arg-types
   (list '* '* int int int)))

(define igInputFloat4
  (foreign-library-function
   cimgui
   "igInputFloat4"
   #:return-type
   bool
   #:arg-types
   (list '* 4 '* int)))

(define igInputFloat3
  (foreign-library-function
   cimgui
   "igInputFloat3"
   #:return-type
   bool
   #:arg-types
   (list '* 3 '* int)))

(define igInputFloat2
  (foreign-library-function
   cimgui
   "igInputFloat2"
   #:return-type
   bool
   #:arg-types
   (list '* 2 '* int)))

(define igInputFloat
  (foreign-library-function
   cimgui
   "igInputFloat"
   #:return-type
   bool
   #:arg-types
   (list '* '* float float '* int)))

(define igInputDouble
  (foreign-library-function
   cimgui
   "igInputDouble"
   #:return-type
   bool
   #:arg-types
   (list '* '* double double '* int)))

(define igInitialize
  (foreign-library-function
   cimgui
   "igInitialize"
   #:return-type
   void
   #:arg-types
   (list)))

(define igIndent
  (foreign-library-function
   cimgui
   "igIndent"
   #:return-type
   void
   #:arg-types
   (list float)))

(define igImageButtonEx
  (foreign-library-function
   cimgui
   "igImageButtonEx"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int '* ImVec2 ImVec2 ImVec2 ImVec4 ImVec4 int)))

(define igImageButton
  (foreign-library-function
   cimgui
   "igImageButton"
   #:return-type
   bool
   #:arg-types
   (list '* '* ImVec2 ImVec2 ImVec2 ImVec4 ImVec4)))

(define igImage
  (foreign-library-function
   cimgui
   "igImage"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 ImVec4 ImVec4)))

(define igImUpperPowerOfTwo
  (foreign-library-function
   cimgui
   "igImUpperPowerOfTwo"
   #:return-type
   int
   #:arg-types
   (list int)))

(define igImTrunc
  (foreign-library-function
   cimgui
   "igImTrunc"
   #:return-type
   float
   #:arg-types
   (list float)))

(define igImTriangleIsClockwise
  (foreign-library-function
   cimgui
   "igImTriangleIsClockwise"
   #:return-type
   bool
   #:arg-types
   (list ImVec2 ImVec2 ImVec2)))

(define igImTriangleContainsPoint
  (foreign-library-function
   cimgui
   "igImTriangleContainsPoint"
   #:return-type
   bool
   #:arg-types
   (list ImVec2 ImVec2 ImVec2 ImVec2)))

(define igImTriangleClosestPoint
  (foreign-library-function
   cimgui
   "igImTriangleClosestPoint"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 ImVec2)))

(define igImTriangleBarycentricCoords
  (foreign-library-function
   cimgui
   "igImTriangleBarycentricCoords"
   #:return-type
   void
   #:arg-types
   (list ImVec2 ImVec2 ImVec2 ImVec2 '* '* '*)))

(define igImTriangleArea
  (foreign-library-function
   cimgui
   "igImTriangleArea"
   #:return-type
   float
   #:arg-types
   (list ImVec2 ImVec2 ImVec2)))

(define igImToUpper
  (foreign-library-function
   cimgui
   "igImToUpper"
   #:return-type
   char
   #:arg-types
   (list char)))

(define igImTextStrToUtf8
  (foreign-library-function
   cimgui
   "igImTextStrToUtf8"
   #:return-type
   int
   #:arg-types
   (list '* int '* '*)))

(define igImTextStrFromUtf8
  (foreign-library-function
   cimgui
   "igImTextStrFromUtf8"
   #:return-type
   int
   #:arg-types
   (list '* int '* '* '*)))

(define igImTextFindPreviousUtf8Codepoint
  (foreign-library-function
   cimgui
   "igImTextFindPreviousUtf8Codepoint"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define igImTextCountUtf8BytesFromStr
  (foreign-library-function
   cimgui
   "igImTextCountUtf8BytesFromStr"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define igImTextCountUtf8BytesFromChar
  (foreign-library-function
   cimgui
   "igImTextCountUtf8BytesFromChar"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define igImTextCountLines
  (foreign-library-function
   cimgui
   "igImTextCountLines"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define igImTextCountCharsFromUtf8
  (foreign-library-function
   cimgui
   "igImTextCountCharsFromUtf8"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define igImTextCharToUtf8
  (foreign-library-function
   cimgui
   "igImTextCharToUtf8"
   #:return-type
   '*
   #:arg-types
   (list -1 unsigned-int)))

(define igImTextCharFromUtf8
  (foreign-library-function
   cimgui
   "igImTextCharFromUtf8"
   #:return-type
   int
   #:arg-types
   (list '* '* '*)))

(define igImStrnicmp
  (foreign-library-function
   cimgui
   "igImStrnicmp"
   #:return-type
   int
   #:arg-types
   (list '* '* size_t)))

(define igImStrncpy
  (foreign-library-function
   cimgui
   "igImStrncpy"
   #:return-type
   void
   #:arg-types
   (list '* '* size_t)))

(define igImStrlenW
  (foreign-library-function
   cimgui
   "igImStrlenW"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define igImStristr
  (foreign-library-function
   cimgui
   "igImStristr"
   #:return-type
   '*
   #:arg-types
   (list '* '* '* '*)))

(define igImStricmp
  (foreign-library-function
   cimgui
   "igImStricmp"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define igImStreolRange
  (foreign-library-function
   cimgui
   "igImStreolRange"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define igImStrdupcpy
  (foreign-library-function
   cimgui
   "igImStrdupcpy"
   #:return-type
   '*
   #:arg-types
   (list '* '* '*)))

(define igImStrdup
  (foreign-library-function
   cimgui
   "igImStrdup"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igImStrchrRange
  (foreign-library-function
   cimgui
   "igImStrchrRange"
   #:return-type
   '*
   #:arg-types
   (list '* '* char)))

(define igImStrbolW
  (foreign-library-function
   cimgui
   "igImStrbolW"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define igImStrTrimBlanks
  (foreign-library-function
   cimgui
   "igImStrTrimBlanks"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igImStrSkipBlank
  (foreign-library-function
   cimgui
   "igImStrSkipBlank"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igImSign
  (foreign-library-function
   cimgui
   "igImSign"
   #:return-type
   float
   #:arg-types
   (list float)))

(define igImSaturate
  (foreign-library-function
   cimgui
   "igImSaturate"
   #:return-type
   float
   #:arg-types
   (list float)))

(define igImRsqrt
  (foreign-library-function
   cimgui
   "igImRsqrt"
   #:return-type
   float
   #:arg-types
   (list float)))

(define igImRotate
  (foreign-library-function
   cimgui
   "igImRotate"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float float)))

(define igImQsort
  (foreign-library-function
   cimgui
   "igImQsort"
   #:return-type
   void
   #:arg-types
   (list '* size_t size_t int)))

(define igImPow
  (foreign-library-function
   cimgui
   "igImPow"
   #:return-type
   float
   #:arg-types
   (list float float)))

(define igImParseFormatTrimDecorations
  (foreign-library-function
   cimgui
   "igImParseFormatTrimDecorations"
   #:return-type
   '*
   #:arg-types
   (list '* '* size_t)))

(define igImParseFormatSanitizeForScanning
  (foreign-library-function
   cimgui
   "igImParseFormatSanitizeForScanning"
   #:return-type
   '*
   #:arg-types
   (list '* '* size_t)))

(define igImParseFormatSanitizeForPrinting
  (foreign-library-function
   cimgui
   "igImParseFormatSanitizeForPrinting"
   #:return-type
   void
   #:arg-types
   (list '* '* size_t)))

(define igImParseFormatPrecision
  (foreign-library-function
   cimgui
   "igImParseFormatPrecision"
   #:return-type
   int
   #:arg-types
   (list '* int)))

(define igImParseFormatFindStart
  (foreign-library-function
   cimgui
   "igImParseFormatFindStart"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igImParseFormatFindEnd
  (foreign-library-function
   cimgui
   "igImParseFormatFindEnd"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igImMul
  (foreign-library-function
   cimgui
   "igImMul"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2)))

(define igImModPositive
  (foreign-library-function
   cimgui
   "igImModPositive"
   #:return-type
   int
   #:arg-types
   (list int int)))

(define igImMin
  (foreign-library-function
   cimgui
   "igImMin"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2)))

(define igImMax
  (foreign-library-function
   cimgui
   "igImMax"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2)))

(define igImLowerBound
  (foreign-library-function
   cimgui
   "igImLowerBound"
   #:return-type
   '*
   #:arg-types
   (list '* '* unsigned-int)))

(define igImLog
  (foreign-library-function
   cimgui
   "igImLog"
   #:return-type
   float
   #:arg-types
   (list float)))

(define igImLinearSweep
  (foreign-library-function
   cimgui
   "igImLinearSweep"
   #:return-type
   float
   #:arg-types
   (list float float float)))

(define igImLinearRemapClamp
  (foreign-library-function
   cimgui
   "igImLinearRemapClamp"
   #:return-type
   float
   #:arg-types
   (list float float float float float)))

(define igImLineClosestPoint
  (foreign-library-function
   cimgui
   "igImLineClosestPoint"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2)))

(define igImLerp
  (foreign-library-function
   cimgui
   "igImLerp"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 float)))

(define igImLengthSqr
  (foreign-library-function
   cimgui
   "igImLengthSqr"
   #:return-type
   float
   #:arg-types
   (list ImVec2)))

(define igImIsPowerOfTwo
  (foreign-library-function
   cimgui
   "igImIsPowerOfTwo"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igImIsFloatAboveGuaranteedIntegerPrecision
  (foreign-library-function
   cimgui
   "igImIsFloatAboveGuaranteedIntegerPrecision"
   #:return-type
   bool
   #:arg-types
   (list float)))

(define igImInvLength
  (foreign-library-function
   cimgui
   "igImInvLength"
   #:return-type
   float
   #:arg-types
   (list ImVec2 float)))

(define igImHashStr
  (foreign-library-function
   cimgui
   "igImHashStr"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* size_t unsigned-int)))

(define igImHashData
  (foreign-library-function
   cimgui
   "igImHashData"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* size_t unsigned-int)))

(define igImFormatStringV
  (foreign-library-function
   cimgui
   "igImFormatStringV"
   #:return-type
   int
   #:arg-types
   (list '* size_t '*)))

(define igImFormatStringToTempBufferV
  (foreign-library-function
   cimgui
   "igImFormatStringToTempBufferV"
   #:return-type
   void
   #:arg-types
   (list '* '* '*)))

(define igImFormatStringToTempBuffer
  (foreign-library-function
   cimgui
   "igImFormatStringToTempBuffer"
   #:return-type
   void
   #:arg-types
   (list '* '* '*)))

(define igImFormatString
  (foreign-library-function
   cimgui
   "igImFormatString"
   #:return-type
   int
   #:arg-types
   (list '* size_t '*)))

(define igImFontAtlasUpdateConfigDataPointers
  (foreign-library-function
   cimgui
   "igImFontAtlasUpdateConfigDataPointers"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igImFontAtlasGetBuilderForStbTruetype
  (foreign-library-function
   cimgui
   "igImFontAtlasGetBuilderForStbTruetype"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igImFontAtlasBuildSetupFont
  (foreign-library-function
   cimgui
   "igImFontAtlasBuildSetupFont"
   #:return-type
   void
   #:arg-types
   (list '* '* '* float float)))

(define igImFontAtlasBuildRender8bppRectFromString
  (foreign-library-function
   cimgui
   "igImFontAtlasBuildRender8bppRectFromString"
   #:return-type
   void
   #:arg-types
   (list '* int int int int '* char -1)))

(define igImFontAtlasBuildRender32bppRectFromString
  (foreign-library-function
   cimgui
   "igImFontAtlasBuildRender32bppRectFromString"
   #:return-type
   void
   #:arg-types
   (list '* int int int int '* char unsigned-int)))

(define igImFontAtlasBuildPackCustomRects
  (foreign-library-function
   cimgui
   "igImFontAtlasBuildPackCustomRects"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igImFontAtlasBuildMultiplyRectAlpha8
  (foreign-library-function
   cimgui
   "igImFontAtlasBuildMultiplyRectAlpha8"
   #:return-type
   void
   #:arg-types
   (list -1 '* int int int int int)))

(define igImFontAtlasBuildMultiplyCalcLookupTable
  (foreign-library-function
   cimgui
   "igImFontAtlasBuildMultiplyCalcLookupTable"
   #:return-type
   void
   #:arg-types
   (list -1 float)))

(define igImFontAtlasBuildInit
  (foreign-library-function
   cimgui
   "igImFontAtlasBuildInit"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igImFontAtlasBuildFinish
  (foreign-library-function
   cimgui
   "igImFontAtlasBuildFinish"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igImFloor
  (foreign-library-function
   cimgui
   "igImFloor"
   #:return-type
   float
   #:arg-types
   (list float)))

(define igImFileWrite
  (foreign-library-function
   cimgui
   "igImFileWrite"
   #:return-type
   uint64
   #:arg-types
   (list '* uint64 uint64 -1)))

(define igImFileRead
  (foreign-library-function
   cimgui
   "igImFileRead"
   #:return-type
   uint64
   #:arg-types
   (list '* uint64 uint64 -1)))

(define igImFileOpen
  (foreign-library-function
   cimgui
   "igImFileOpen"
   #:return-type
   -1
   #:arg-types
   (list '* '*)))

(define igImFileLoadToMemory
  (foreign-library-function
   cimgui
   "igImFileLoadToMemory"
   #:return-type
   '*
   #:arg-types
   (list '* '* '* int)))

(define igImFileGetSize
  (foreign-library-function
   cimgui
   "igImFileGetSize"
   #:return-type
   uint64
   #:arg-types
   (list -1)))

(define igImFileClose
  (foreign-library-function
   cimgui
   "igImFileClose"
   #:return-type
   bool
   #:arg-types
   (list -1)))

(define igImExponentialMovingAverage
  (foreign-library-function
   cimgui
   "igImExponentialMovingAverage"
   #:return-type
   float
   #:arg-types
   (list float float int)))

(define igImDot
  (foreign-library-function
   cimgui
   "igImDot"
   #:return-type
   float
   #:arg-types
   (list ImVec2 ImVec2)))

(define igImClamp
  (foreign-library-function
   cimgui
   "igImClamp"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2)))

(define igImCharIsXdigitA
  (foreign-library-function
   cimgui
   "igImCharIsXdigitA"
   #:return-type
   bool
   #:arg-types
   (list char)))

(define igImCharIsBlankW
  (foreign-library-function
   cimgui
   "igImCharIsBlankW"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int)))

(define igImCharIsBlankA
  (foreign-library-function
   cimgui
   "igImCharIsBlankA"
   #:return-type
   bool
   #:arg-types
   (list char)))

(define igImBitArrayTestBit
  (foreign-library-function
   cimgui
   "igImBitArrayTestBit"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igImBitArraySetBitRange
  (foreign-library-function
   cimgui
   "igImBitArraySetBitRange"
   #:return-type
   void
   #:arg-types
   (list '* int int)))

(define igImBitArraySetBit
  (foreign-library-function
   cimgui
   "igImBitArraySetBit"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igImBitArrayGetStorageSizeInBytes
  (foreign-library-function
   cimgui
   "igImBitArrayGetStorageSizeInBytes"
   #:return-type
   size_t
   #:arg-types
   (list int)))

(define igImBitArrayClearBit
  (foreign-library-function
   cimgui
   "igImBitArrayClearBit"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igImBitArrayClearAllBits
  (foreign-library-function
   cimgui
   "igImBitArrayClearAllBits"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igImBezierQuadraticCalc
  (foreign-library-function
   cimgui
   "igImBezierQuadraticCalc"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 float)))

(define igImBezierCubicClosestPointCasteljau
  (foreign-library-function
   cimgui
   "igImBezierCubicClosestPointCasteljau"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 ImVec2 ImVec2 float)))

(define igImBezierCubicClosestPoint
  (foreign-library-function
   cimgui
   "igImBezierCubicClosestPoint"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 ImVec2 ImVec2 int)))

(define igImBezierCubicCalc
  (foreign-library-function
   cimgui
   "igImBezierCubicCalc"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 ImVec2 float)))

(define igImAlphaBlendColors
  (foreign-library-function
   cimgui
   "igImAlphaBlendColors"
   #:return-type
   unsigned-int
   #:arg-types
   (list unsigned-int unsigned-int)))

(define igImAbs
  (foreign-library-function
   cimgui
   "igImAbs"
   #:return-type
   int
   #:arg-types
   (list int)))

(define igGetWindowWidth
  (foreign-library-function
   cimgui
   "igGetWindowWidth"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetWindowViewport
  (foreign-library-function
   cimgui
   "igGetWindowViewport"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetWindowSize
  (foreign-library-function
   cimgui
   "igGetWindowSize"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetWindowScrollbarRect
  (foreign-library-function
   cimgui
   "igGetWindowScrollbarRect"
   #:return-type
   void
   #:arg-types
   (list '* '* -1)))

(define igGetWindowScrollbarID
  (foreign-library-function
   cimgui
   "igGetWindowScrollbarID"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* -1)))

(define igGetWindowResizeCornerID
  (foreign-library-function
   cimgui
   "igGetWindowResizeCornerID"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* int)))

(define igGetWindowResizeBorderID
  (foreign-library-function
   cimgui
   "igGetWindowResizeBorderID"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* int)))

(define igGetWindowPos
  (foreign-library-function
   cimgui
   "igGetWindowPos"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetWindowHeight
  (foreign-library-function
   cimgui
   "igGetWindowHeight"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetWindowDrawList
  (foreign-library-function
   cimgui
   "igGetWindowDrawList"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetWindowDpiScale
  (foreign-library-function
   cimgui
   "igGetWindowDpiScale"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetWindowDockNode
  (foreign-library-function
   cimgui
   "igGetWindowDockNode"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetWindowDockID
  (foreign-library-function
   cimgui
   "igGetWindowDockID"
   #:return-type
   unsigned-int
   #:arg-types
   (list)))

(define igGetWindowAlwaysWantOwnTabBar
  (foreign-library-function
   cimgui
   "igGetWindowAlwaysWantOwnTabBar"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igGetViewportPlatformMonitor
  (foreign-library-function
   cimgui
   "igGetViewportPlatformMonitor"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igGetVersion
  (foreign-library-function
   cimgui
   "igGetVersion"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetTypingSelectRequest
  (foreign-library-function
   cimgui
   "igGetTypingSelectRequest"
   #:return-type
   '*
   #:arg-types
   (list int)))

(define igGetTypematicRepeatRate
  (foreign-library-function
   cimgui
   "igGetTypematicRepeatRate"
   #:return-type
   void
   #:arg-types
   (list int '* '*)))

(define igGetTreeNodeToLabelSpacing
  (foreign-library-function
   cimgui
   "igGetTreeNodeToLabelSpacing"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetTopMostPopupModal
  (foreign-library-function
   cimgui
   "igGetTopMostPopupModal"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetTopMostAndVisiblePopupModal
  (foreign-library-function
   cimgui
   "igGetTopMostAndVisiblePopupModal"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetTime
  (foreign-library-function
   cimgui
   "igGetTime"
   #:return-type
   double
   #:arg-types
   (list)))

(define igGetTextLineHeightWithSpacing
  (foreign-library-function
   cimgui
   "igGetTextLineHeightWithSpacing"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetTextLineHeight
  (foreign-library-function
   cimgui
   "igGetTextLineHeight"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetStyleVarInfo
  (foreign-library-function
   cimgui
   "igGetStyleVarInfo"
   #:return-type
   '*
   #:arg-types
   (list int)))

(define igGetStyleColorVec4
  (foreign-library-function
   cimgui
   "igGetStyleColorVec4"
   #:return-type
   '*
   #:arg-types
   (list -1)))

(define igGetStyleColorName
  (foreign-library-function
   cimgui
   "igGetStyleColorName"
   #:return-type
   '*
   #:arg-types
   (list -1)))

(define igGetStyle
  (foreign-library-function
   cimgui
   "igGetStyle"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetStateStorage
  (foreign-library-function
   cimgui
   "igGetStateStorage"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetShortcutRoutingData
  (foreign-library-function
   cimgui
   "igGetShortcutRoutingData"
   #:return-type
   '*
   #:arg-types
   (list -1)))

(define igGetScrollY
  (foreign-library-function
   cimgui
   "igGetScrollY"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetScrollX
  (foreign-library-function
   cimgui
   "igGetScrollX"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetScrollMaxY
  (foreign-library-function
   cimgui
   "igGetScrollMaxY"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetScrollMaxX
  (foreign-library-function
   cimgui
   "igGetScrollMaxX"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetPopupAllowedExtentRect
  (foreign-library-function
   cimgui
   "igGetPopupAllowedExtentRect"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igGetPlatformIO
  (foreign-library-function
   cimgui
   "igGetPlatformIO"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetNavTweakPressedAmount
  (foreign-library-function
   cimgui
   "igGetNavTweakPressedAmount"
   #:return-type
   float
   #:arg-types
   (list -1)))

(define igGetMultiSelectState
  (foreign-library-function
   cimgui
   "igGetMultiSelectState"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igGetMousePosOnOpeningCurrentPopup
  (foreign-library-function
   cimgui
   "igGetMousePosOnOpeningCurrentPopup"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetMousePos
  (foreign-library-function
   cimgui
   "igGetMousePos"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetMouseDragDelta
  (foreign-library-function
   cimgui
   "igGetMouseDragDelta"
   #:return-type
   void
   #:arg-types
   (list '* -1 float)))

(define igGetMouseCursor
  (foreign-library-function
   cimgui
   "igGetMouseCursor"
   #:return-type
   int
   #:arg-types
   (list)))

(define igGetMouseClickedCount
  (foreign-library-function
   cimgui
   "igGetMouseClickedCount"
   #:return-type
   int
   #:arg-types
   (list -1)))

(define igGetMainViewport
  (foreign-library-function
   cimgui
   "igGetMainViewport"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetKeyPressedAmount
  (foreign-library-function
   cimgui
   "igGetKeyPressedAmount"
   #:return-type
   int
   #:arg-types
   (list int float float)))

(define igGetKeyOwnerData
  (foreign-library-function
   cimgui
   "igGetKeyOwnerData"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define igGetKeyOwner
  (foreign-library-function
   cimgui
   "igGetKeyOwner"
   #:return-type
   unsigned-int
   #:arg-types
   (list int)))

(define igGetKeyName
  (foreign-library-function
   cimgui
   "igGetKeyName"
   #:return-type
   '*
   #:arg-types
   (list int)))

(define igGetKeyMagnitude2d
  (foreign-library-function
   cimgui
   "igGetKeyMagnitude2d"
   #:return-type
   void
   #:arg-types
   (list '* int int int int)))

(define igGetKeyData
  (foreign-library-function
   cimgui
   "igGetKeyData"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define igGetKeyChordName
  (foreign-library-function
   cimgui
   "igGetKeyChordName"
   #:return-type
   '*
   #:arg-types
   (list -1)))

(define igGetItemStatusFlags
  (foreign-library-function
   cimgui
   "igGetItemStatusFlags"
   #:return-type
   int
   #:arg-types
   (list)))

(define igGetItemRectSize
  (foreign-library-function
   cimgui
   "igGetItemRectSize"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetItemRectMin
  (foreign-library-function
   cimgui
   "igGetItemRectMin"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetItemRectMax
  (foreign-library-function
   cimgui
   "igGetItemRectMax"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetItemID
  (foreign-library-function
   cimgui
   "igGetItemID"
   #:return-type
   unsigned-int
   #:arg-types
   (list)))

(define igGetItemFlags
  (foreign-library-function
   cimgui
   "igGetItemFlags"
   #:return-type
   int
   #:arg-types
   (list)))

(define igGetInputTextState
  (foreign-library-function
   cimgui
   "igGetInputTextState"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igGetIO
  (foreign-library-function
   cimgui
   "igGetIO"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetIDWithSeed
  (foreign-library-function
   cimgui
   "igGetIDWithSeed"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* '* unsigned-int)))

(define igGetID
  (foreign-library-function
   cimgui
   "igGetID"
   #:return-type
   unsigned-int
   #:arg-types
   (list '*)))

(define igGetHoveredID
  (foreign-library-function
   cimgui
   "igGetHoveredID"
   #:return-type
   unsigned-int
   #:arg-types
   (list)))

(define igGetFrameHeightWithSpacing
  (foreign-library-function
   cimgui
   "igGetFrameHeightWithSpacing"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetFrameHeight
  (foreign-library-function
   cimgui
   "igGetFrameHeight"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetFrameCount
  (foreign-library-function
   cimgui
   "igGetFrameCount"
   #:return-type
   int
   #:arg-types
   (list)))

(define igGetForegroundDrawList
  (foreign-library-function
   cimgui
   "igGetForegroundDrawList"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igGetFontTexUvWhitePixel
  (foreign-library-function
   cimgui
   "igGetFontTexUvWhitePixel"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetFontSize
  (foreign-library-function
   cimgui
   "igGetFontSize"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetFont
  (foreign-library-function
   cimgui
   "igGetFont"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetFocusID
  (foreign-library-function
   cimgui
   "igGetFocusID"
   #:return-type
   unsigned-int
   #:arg-types
   (list)))

(define igGetDrawListSharedData
  (foreign-library-function
   cimgui
   "igGetDrawListSharedData"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetDrawData
  (foreign-library-function
   cimgui
   "igGetDrawData"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetDragDropPayload
  (foreign-library-function
   cimgui
   "igGetDragDropPayload"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetDefaultFont
  (foreign-library-function
   cimgui
   "igGetDefaultFont"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetCursorStartPos
  (foreign-library-function
   cimgui
   "igGetCursorStartPos"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetCursorScreenPos
  (foreign-library-function
   cimgui
   "igGetCursorScreenPos"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetCursorPosY
  (foreign-library-function
   cimgui
   "igGetCursorPosY"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetCursorPosX
  (foreign-library-function
   cimgui
   "igGetCursorPosX"
   #:return-type
   float
   #:arg-types
   (list)))

(define igGetCursorPos
  (foreign-library-function
   cimgui
   "igGetCursorPos"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetCurrentWindowRead
  (foreign-library-function
   cimgui
   "igGetCurrentWindowRead"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetCurrentWindow
  (foreign-library-function
   cimgui
   "igGetCurrentWindow"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetCurrentTable
  (foreign-library-function
   cimgui
   "igGetCurrentTable"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetCurrentTabBar
  (foreign-library-function
   cimgui
   "igGetCurrentTabBar"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetCurrentFocusScope
  (foreign-library-function
   cimgui
   "igGetCurrentFocusScope"
   #:return-type
   unsigned-int
   #:arg-types
   (list)))

(define igGetCurrentContext
  (foreign-library-function
   cimgui
   "igGetCurrentContext"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetContentRegionAvail
  (foreign-library-function
   cimgui
   "igGetContentRegionAvail"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGetColumnsID
  (foreign-library-function
   cimgui
   "igGetColumnsID"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* int)))

(define igGetColumnsCount
  (foreign-library-function
   cimgui
   "igGetColumnsCount"
   #:return-type
   int
   #:arg-types
   (list)))

(define igGetColumnWidth
  (foreign-library-function
   cimgui
   "igGetColumnWidth"
   #:return-type
   float
   #:arg-types
   (list int)))

(define igGetColumnOffsetFromNorm
  (foreign-library-function
   cimgui
   "igGetColumnOffsetFromNorm"
   #:return-type
   float
   #:arg-types
   (list '* float)))

(define igGetColumnOffset
  (foreign-library-function
   cimgui
   "igGetColumnOffset"
   #:return-type
   float
   #:arg-types
   (list int)))

(define igGetColumnNormFromOffset
  (foreign-library-function
   cimgui
   "igGetColumnNormFromOffset"
   #:return-type
   float
   #:arg-types
   (list '* float)))

(define igGetColumnIndex
  (foreign-library-function
   cimgui
   "igGetColumnIndex"
   #:return-type
   int
   #:arg-types
   (list)))

(define igGetColorU32
  (foreign-library-function
   cimgui
   "igGetColorU32"
   #:return-type
   unsigned-int
   #:arg-types
   (list -1 float)))

(define igGetClipboardText
  (foreign-library-function
   cimgui
   "igGetClipboardText"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igGetBoxSelectState
  (foreign-library-function
   cimgui
   "igGetBoxSelectState"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igGetBackgroundDrawList
  (foreign-library-function
   cimgui
   "igGetBackgroundDrawList"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igGetAllocatorFunctions
  (foreign-library-function
   cimgui
   "igGetAllocatorFunctions"
   #:return-type
   void
   #:arg-types
   (list '* '* '*)))

(define igGetActiveID
  (foreign-library-function
   cimgui
   "igGetActiveID"
   #:return-type
   unsigned-int
   #:arg-types
   (list)))

(define igGcCompactTransientWindowBuffers
  (foreign-library-function
   cimgui
   "igGcCompactTransientWindowBuffers"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igGcCompactTransientMiscBuffers
  (foreign-library-function
   cimgui
   "igGcCompactTransientMiscBuffers"
   #:return-type
   void
   #:arg-types
   (list)))

(define igGcAwakeTransientWindowBuffers
  (foreign-library-function
   cimgui
   "igGcAwakeTransientWindowBuffers"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igFocusWindow
  (foreign-library-function
   cimgui
   "igFocusWindow"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igFocusTopMostWindowUnderOne
  (foreign-library-function
   cimgui
   "igFocusTopMostWindowUnderOne"
   #:return-type
   void
   #:arg-types
   (list '* '* '* int)))

(define igFocusItem
  (foreign-library-function
   cimgui
   "igFocusItem"
   #:return-type
   void
   #:arg-types
   (list)))

(define igFixupKeyChord
  (foreign-library-function
   cimgui
   "igFixupKeyChord"
   #:return-type
   -1
   #:arg-types
   (list -1)))

(define igFindWindowSettingsByWindow
  (foreign-library-function
   cimgui
   "igFindWindowSettingsByWindow"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igFindWindowSettingsByID
  (foreign-library-function
   cimgui
   "igFindWindowSettingsByID"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igFindWindowDisplayIndex
  (foreign-library-function
   cimgui
   "igFindWindowDisplayIndex"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define igFindWindowByName
  (foreign-library-function
   cimgui
   "igFindWindowByName"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igFindWindowByID
  (foreign-library-function
   cimgui
   "igFindWindowByID"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igFindViewportByPlatformHandle
  (foreign-library-function
   cimgui
   "igFindViewportByPlatformHandle"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igFindViewportByID
  (foreign-library-function
   cimgui
   "igFindViewportByID"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igFindSettingsHandler
  (foreign-library-function
   cimgui
   "igFindSettingsHandler"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igFindRenderedTextEnd
  (foreign-library-function
   cimgui
   "igFindRenderedTextEnd"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define igFindOrCreateColumns
  (foreign-library-function
   cimgui
   "igFindOrCreateColumns"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int)))

(define igFindHoveredWindowEx
  (foreign-library-function
   cimgui
   "igFindHoveredWindowEx"
   #:return-type
   void
   #:arg-types
   (list ImVec2 bool '* '*)))

(define igFindHoveredViewportFromPlatformWindowStack
  (foreign-library-function
   cimgui
   "igFindHoveredViewportFromPlatformWindowStack"
   #:return-type
   '*
   #:arg-types
   (list ImVec2)))

(define igFindBottomMostVisibleWindowWithinBeginStack
  (foreign-library-function
   cimgui
   "igFindBottomMostVisibleWindowWithinBeginStack"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igFindBlockingModal
  (foreign-library-function
   cimgui
   "igFindBlockingModal"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igFindBestWindowPosForPopupEx
  (foreign-library-function
   cimgui
   "igFindBestWindowPosForPopupEx"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 '* ImRect ImRect -1)))

(define igFindBestWindowPosForPopup
  (foreign-library-function
   cimgui
   "igFindBestWindowPosForPopup"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igErrorCheckUsingSetCursorPosToExtendParentBoundaries
  (foreign-library-function
   cimgui
   "igErrorCheckUsingSetCursorPosToExtendParentBoundaries"
   #:return-type
   void
   #:arg-types
   (list)))

(define igErrorCheckEndWindowRecover
  (foreign-library-function
   cimgui
   "igErrorCheckEndWindowRecover"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igErrorCheckEndFrameRecover
  (foreign-library-function
   cimgui
   "igErrorCheckEndFrameRecover"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igEndTooltip
  (foreign-library-function
   cimgui
   "igEndTooltip"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndTable
  (foreign-library-function
   cimgui
   "igEndTable"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndTabItem
  (foreign-library-function
   cimgui
   "igEndTabItem"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndTabBar
  (foreign-library-function
   cimgui
   "igEndTabBar"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndPopup
  (foreign-library-function
   cimgui
   "igEndPopup"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndMultiSelect
  (foreign-library-function
   cimgui
   "igEndMultiSelect"
   #:return-type
   '*
   #:arg-types
   (list)))

(define igEndMenuBar
  (foreign-library-function
   cimgui
   "igEndMenuBar"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndMenu
  (foreign-library-function
   cimgui
   "igEndMenu"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndMainMenuBar
  (foreign-library-function
   cimgui
   "igEndMainMenuBar"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndListBox
  (foreign-library-function
   cimgui
   "igEndListBox"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndGroup
  (foreign-library-function
   cimgui
   "igEndGroup"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndFrame
  (foreign-library-function
   cimgui
   "igEndFrame"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndDragDropTarget
  (foreign-library-function
   cimgui
   "igEndDragDropTarget"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndDragDropSource
  (foreign-library-function
   cimgui
   "igEndDragDropSource"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndDisabledOverrideReenable
  (foreign-library-function
   cimgui
   "igEndDisabledOverrideReenable"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndDisabled
  (foreign-library-function
   cimgui
   "igEndDisabled"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndComboPreview
  (foreign-library-function
   cimgui
   "igEndComboPreview"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndCombo
  (foreign-library-function
   cimgui
   "igEndCombo"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndColumns
  (foreign-library-function
   cimgui
   "igEndColumns"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndChild
  (foreign-library-function
   cimgui
   "igEndChild"
   #:return-type
   void
   #:arg-types
   (list)))

(define igEndBoxSelect
  (foreign-library-function
   cimgui
   "igEndBoxSelect"
   #:return-type
   void
   #:arg-types
   (list ImRect int)))

(define igEnd
  (foreign-library-function
   cimgui
   "igEnd"
   #:return-type
   void
   #:arg-types
   (list)))

(define igDummy
  (foreign-library-function
   cimgui
   "igDummy"
   #:return-type
   void
   #:arg-types
   (list ImVec2)))

(define igDragScalarN
  (foreign-library-function
   cimgui
   "igDragScalarN"
   #:return-type
   bool
   #:arg-types
   (list '* -1 '* int float '* '* '* int)))

(define igDragScalar
  (foreign-library-function
   cimgui
   "igDragScalar"
   #:return-type
   bool
   #:arg-types
   (list '* -1 '* float '* '* '* int)))

(define igDragIntRange2
  (foreign-library-function
   cimgui
   "igDragIntRange2"
   #:return-type
   bool
   #:arg-types
   (list '* '* '* float int int '* '* int)))

(define igDragInt4
  (foreign-library-function
   cimgui
   "igDragInt4"
   #:return-type
   bool
   #:arg-types
   (list '* 32 float int int '* int)))

(define igDragInt3
  (foreign-library-function
   cimgui
   "igDragInt3"
   #:return-type
   bool
   #:arg-types
   (list '* 24 float int int '* int)))

(define igDragInt2
  (foreign-library-function
   cimgui
   "igDragInt2"
   #:return-type
   bool
   #:arg-types
   (list '* 16 float int int '* int)))

(define igDragInt
  (foreign-library-function
   cimgui
   "igDragInt"
   #:return-type
   bool
   #:arg-types
   (list '* '* float int int '* int)))

(define igDragFloatRange2
  (foreign-library-function
   cimgui
   "igDragFloatRange2"
   #:return-type
   bool
   #:arg-types
   (list '* '* '* float float float '* '* int)))

(define igDragFloat4
  (foreign-library-function
   cimgui
   "igDragFloat4"
   #:return-type
   bool
   #:arg-types
   (list '* 4 float float float '* int)))

(define igDragFloat3
  (foreign-library-function
   cimgui
   "igDragFloat3"
   #:return-type
   bool
   #:arg-types
   (list '* 3 float float float '* int)))

(define igDragFloat2
  (foreign-library-function
   cimgui
   "igDragFloat2"
   #:return-type
   bool
   #:arg-types
   (list '* 2 float float float '* int)))

(define igDragFloat
  (foreign-library-function
   cimgui
   "igDragFloat"
   #:return-type
   bool
   #:arg-types
   (list '* '* float float float '* int)))

(define igDragBehavior
  (foreign-library-function
   cimgui
   "igDragBehavior"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int -1 '* float '* '* '* int)))

(define igDockSpaceOverViewport
  (foreign-library-function
   cimgui
   "igDockSpaceOverViewport"
   #:return-type
   unsigned-int
   #:arg-types
   (list unsigned-int '* int '*)))

(define igDockSpace
  (foreign-library-function
   cimgui
   "igDockSpace"
   #:return-type
   unsigned-int
   #:arg-types
   (list unsigned-int ImVec2 int '*)))

(define igDockNodeWindowMenuHandler_Default
  (foreign-library-function
   cimgui
   "igDockNodeWindowMenuHandler_Default"
   #:return-type
   void
   #:arg-types
   (list '* '* '*)))

(define igDockNodeIsInHierarchyOf
  (foreign-library-function
   cimgui
   "igDockNodeIsInHierarchyOf"
   #:return-type
   bool
   #:arg-types
   (list '* '*)))

(define igDockNodeGetWindowMenuButtonId
  (foreign-library-function
   cimgui
   "igDockNodeGetWindowMenuButtonId"
   #:return-type
   unsigned-int
   #:arg-types
   (list '*)))

(define igDockNodeGetRootNode
  (foreign-library-function
   cimgui
   "igDockNodeGetRootNode"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igDockNodeGetDepth
  (foreign-library-function
   cimgui
   "igDockNodeGetDepth"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define igDockNodeEndAmendTabBar
  (foreign-library-function
   cimgui
   "igDockNodeEndAmendTabBar"
   #:return-type
   void
   #:arg-types
   (list)))

(define igDockNodeBeginAmendTabBar
  (foreign-library-function
   cimgui
   "igDockNodeBeginAmendTabBar"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define igDockContextShutdown
  (foreign-library-function
   cimgui
   "igDockContextShutdown"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDockContextRebuildNodes
  (foreign-library-function
   cimgui
   "igDockContextRebuildNodes"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDockContextQueueUndockWindow
  (foreign-library-function
   cimgui
   "igDockContextQueueUndockWindow"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDockContextQueueUndockNode
  (foreign-library-function
   cimgui
   "igDockContextQueueUndockNode"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDockContextQueueDock
  (foreign-library-function
   cimgui
   "igDockContextQueueDock"
   #:return-type
   void
   #:arg-types
   (list '* '* '* '* int float bool)))

(define igDockContextProcessUndockWindow
  (foreign-library-function
   cimgui
   "igDockContextProcessUndockWindow"
   #:return-type
   void
   #:arg-types
   (list '* '* bool)))

(define igDockContextProcessUndockNode
  (foreign-library-function
   cimgui
   "igDockContextProcessUndockNode"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDockContextNewFrameUpdateUndocking
  (foreign-library-function
   cimgui
   "igDockContextNewFrameUpdateUndocking"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDockContextNewFrameUpdateDocking
  (foreign-library-function
   cimgui
   "igDockContextNewFrameUpdateDocking"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDockContextInitialize
  (foreign-library-function
   cimgui
   "igDockContextInitialize"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDockContextGenNodeID
  (foreign-library-function
   cimgui
   "igDockContextGenNodeID"
   #:return-type
   unsigned-int
   #:arg-types
   (list '*)))

(define igDockContextFindNodeByID
  (foreign-library-function
   cimgui
   "igDockContextFindNodeByID"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int)))

(define igDockContextEndFrame
  (foreign-library-function
   cimgui
   "igDockContextEndFrame"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDockContextClearNodes
  (foreign-library-function
   cimgui
   "igDockContextClearNodes"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int bool)))

(define igDockContextCalcDropPosForDocking
  (foreign-library-function
   cimgui
   "igDockContextCalcDropPosForDocking"
   #:return-type
   bool
   #:arg-types
   (list '* '* '* '* int bool '*)))

(define igDockBuilderSplitNode
  (foreign-library-function
   cimgui
   "igDockBuilderSplitNode"
   #:return-type
   unsigned-int
   #:arg-types
   (list unsigned-int int float '* '*)))

(define igDockBuilderSetNodeSize
  (foreign-library-function
   cimgui
   "igDockBuilderSetNodeSize"
   #:return-type
   void
   #:arg-types
   (list unsigned-int ImVec2)))

(define igDockBuilderSetNodePos
  (foreign-library-function
   cimgui
   "igDockBuilderSetNodePos"
   #:return-type
   void
   #:arg-types
   (list unsigned-int ImVec2)))

(define igDockBuilderRemoveNodeDockedWindows
  (foreign-library-function
   cimgui
   "igDockBuilderRemoveNodeDockedWindows"
   #:return-type
   void
   #:arg-types
   (list unsigned-int bool)))

(define igDockBuilderRemoveNodeChildNodes
  (foreign-library-function
   cimgui
   "igDockBuilderRemoveNodeChildNodes"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igDockBuilderRemoveNode
  (foreign-library-function
   cimgui
   "igDockBuilderRemoveNode"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igDockBuilderGetNode
  (foreign-library-function
   cimgui
   "igDockBuilderGetNode"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igDockBuilderGetCentralNode
  (foreign-library-function
   cimgui
   "igDockBuilderGetCentralNode"
   #:return-type
   '*
   #:arg-types
   (list unsigned-int)))

(define igDockBuilderFinish
  (foreign-library-function
   cimgui
   "igDockBuilderFinish"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igDockBuilderDockWindow
  (foreign-library-function
   cimgui
   "igDockBuilderDockWindow"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int)))

(define igDockBuilderCopyWindowSettings
  (foreign-library-function
   cimgui
   "igDockBuilderCopyWindowSettings"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDockBuilderCopyNode
  (foreign-library-function
   cimgui
   "igDockBuilderCopyNode"
   #:return-type
   void
   #:arg-types
   (list unsigned-int unsigned-int '*)))

(define igDockBuilderCopyDockSpace
  (foreign-library-function
   cimgui
   "igDockBuilderCopyDockSpace"
   #:return-type
   void
   #:arg-types
   (list unsigned-int unsigned-int '*)))

(define igDockBuilderAddNode
  (foreign-library-function
   cimgui
   "igDockBuilderAddNode"
   #:return-type
   unsigned-int
   #:arg-types
   (list unsigned-int int)))

(define igDestroyPlatformWindows
  (foreign-library-function
   cimgui
   "igDestroyPlatformWindows"
   #:return-type
   void
   #:arg-types
   (list)))

(define igDestroyPlatformWindow
  (foreign-library-function
   cimgui
   "igDestroyPlatformWindow"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDestroyContext
  (foreign-library-function
   cimgui
   "igDestroyContext"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugTextUnformattedWithLocateItem
  (foreign-library-function
   cimgui
   "igDebugTextUnformattedWithLocateItem"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDebugTextEncoding
  (foreign-library-function
   cimgui
   "igDebugTextEncoding"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugStartItemPicker
  (foreign-library-function
   cimgui
   "igDebugStartItemPicker"
   #:return-type
   void
   #:arg-types
   (list)))

(define igDebugRenderViewportThumbnail
  (foreign-library-function
   cimgui
   "igDebugRenderViewportThumbnail"
   #:return-type
   void
   #:arg-types
   (list '* '* ImRect)))

(define igDebugRenderKeyboardPreview
  (foreign-library-function
   cimgui
   "igDebugRenderKeyboardPreview"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugNodeWindowsListByBeginStackParent
  (foreign-library-function
   cimgui
   "igDebugNodeWindowsListByBeginStackParent"
   #:return-type
   void
   #:arg-types
   (list '* int '*)))

(define igDebugNodeWindowsList
  (foreign-library-function
   cimgui
   "igDebugNodeWindowsList"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDebugNodeWindowSettings
  (foreign-library-function
   cimgui
   "igDebugNodeWindowSettings"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugNodeWindow
  (foreign-library-function
   cimgui
   "igDebugNodeWindow"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDebugNodeViewport
  (foreign-library-function
   cimgui
   "igDebugNodeViewport"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugNodeTypingSelectState
  (foreign-library-function
   cimgui
   "igDebugNodeTypingSelectState"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugNodeTableSettings
  (foreign-library-function
   cimgui
   "igDebugNodeTableSettings"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugNodeTable
  (foreign-library-function
   cimgui
   "igDebugNodeTable"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugNodeTabBar
  (foreign-library-function
   cimgui
   "igDebugNodeTabBar"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDebugNodeStorage
  (foreign-library-function
   cimgui
   "igDebugNodeStorage"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDebugNodePlatformMonitor
  (foreign-library-function
   cimgui
   "igDebugNodePlatformMonitor"
   #:return-type
   void
   #:arg-types
   (list '* '* int)))

(define igDebugNodeMultiSelectState
  (foreign-library-function
   cimgui
   "igDebugNodeMultiSelectState"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugNodeInputTextState
  (foreign-library-function
   cimgui
   "igDebugNodeInputTextState"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugNodeFontGlyph
  (foreign-library-function
   cimgui
   "igDebugNodeFontGlyph"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDebugNodeFont
  (foreign-library-function
   cimgui
   "igDebugNodeFont"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugNodeDrawList
  (foreign-library-function
   cimgui
   "igDebugNodeDrawList"
   #:return-type
   void
   #:arg-types
   (list '* '* '* '*)))

(define igDebugNodeDrawCmdShowMeshAndBoundingBox
  (foreign-library-function
   cimgui
   "igDebugNodeDrawCmdShowMeshAndBoundingBox"
   #:return-type
   void
   #:arg-types
   (list '* '* '* bool bool)))

(define igDebugNodeDockNode
  (foreign-library-function
   cimgui
   "igDebugNodeDockNode"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igDebugNodeColumns
  (foreign-library-function
   cimgui
   "igDebugNodeColumns"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugLogV
  (foreign-library-function
   cimgui
   "igDebugLogV"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugLog
  (foreign-library-function
   cimgui
   "igDebugLog"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igDebugLocateItemResolveWithLastItem
  (foreign-library-function
   cimgui
   "igDebugLocateItemResolveWithLastItem"
   #:return-type
   void
   #:arg-types
   (list)))

(define igDebugLocateItemOnHover
  (foreign-library-function
   cimgui
   "igDebugLocateItemOnHover"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igDebugLocateItem
  (foreign-library-function
   cimgui
   "igDebugLocateItem"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igDebugHookIdInfo
  (foreign-library-function
   cimgui
   "igDebugHookIdInfo"
   #:return-type
   void
   #:arg-types
   (list unsigned-int -1 '* '*)))

(define igDebugFlashStyleColor
  (foreign-library-function
   cimgui
   "igDebugFlashStyleColor"
   #:return-type
   void
   #:arg-types
   (list -1)))

(define igDebugDrawLineExtents
  (foreign-library-function
   cimgui
   "igDebugDrawLineExtents"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igDebugDrawItemRect
  (foreign-library-function
   cimgui
   "igDebugDrawItemRect"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igDebugDrawCursorPos
  (foreign-library-function
   cimgui
   "igDebugDrawCursorPos"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igDebugCheckVersionAndDataLayout
  (foreign-library-function
   cimgui
   "igDebugCheckVersionAndDataLayout"
   #:return-type
   bool
   #:arg-types
   (list '* size_t size_t size_t size_t size_t size_t)))

(define igDebugBreakClearData
  (foreign-library-function
   cimgui
   "igDebugBreakClearData"
   #:return-type
   void
   #:arg-types
   (list)))

(define igDebugBreakButtonTooltip
  (foreign-library-function
   cimgui
   "igDebugBreakButtonTooltip"
   #:return-type
   void
   #:arg-types
   (list bool '*)))

(define igDebugBreakButton
  (foreign-library-function
   cimgui
   "igDebugBreakButton"
   #:return-type
   bool
   #:arg-types
   (list '* '*)))

(define igDebugAllocHook
  (foreign-library-function
   cimgui
   "igDebugAllocHook"
   #:return-type
   void
   #:arg-types
   (list '* int '* size_t)))

(define igDataTypeGetInfo
  (foreign-library-function
   cimgui
   "igDataTypeGetInfo"
   #:return-type
   '*
   #:arg-types
   (list -1)))

(define igDataTypeFormatString
  (foreign-library-function
   cimgui
   "igDataTypeFormatString"
   #:return-type
   int
   #:arg-types
   (list '* int -1 '* '*)))

(define igDataTypeCompare
  (foreign-library-function
   cimgui
   "igDataTypeCompare"
   #:return-type
   int
   #:arg-types
   (list -1 '* '*)))

(define igDataTypeClamp
  (foreign-library-function
   cimgui
   "igDataTypeClamp"
   #:return-type
   bool
   #:arg-types
   (list -1 '* '* '*)))

(define igDataTypeApplyOp
  (foreign-library-function
   cimgui
   "igDataTypeApplyOp"
   #:return-type
   void
   #:arg-types
   (list -1 int '* '* '*)))

(define igDataTypeApplyFromText
  (foreign-library-function
   cimgui
   "igDataTypeApplyFromText"
   #:return-type
   bool
   #:arg-types
   (list '* -1 '* '* '*)))

(define igCreateNewWindowSettings
  (foreign-library-function
   cimgui
   "igCreateNewWindowSettings"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igCreateContext
  (foreign-library-function
   cimgui
   "igCreateContext"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define igConvertSingleModFlagToKey
  (foreign-library-function
   cimgui
   "igConvertSingleModFlagToKey"
   #:return-type
   int
   #:arg-types
   (list int)))

(define igCombo
  (foreign-library-function
   cimgui
   "igCombo"
   #:return-type
   bool
   #:arg-types
   (list '* '* -1 int int)))

(define igColumns
  (foreign-library-function
   cimgui
   "igColumns"
   #:return-type
   void
   #:arg-types
   (list int '* bool)))

(define igColorTooltip
  (foreign-library-function
   cimgui
   "igColorTooltip"
   #:return-type
   void
   #:arg-types
   (list '* '* int)))

(define igColorPickerOptionsPopup
  (foreign-library-function
   cimgui
   "igColorPickerOptionsPopup"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igColorPicker4
  (foreign-library-function
   cimgui
   "igColorPicker4"
   #:return-type
   bool
   #:arg-types
   (list '* 4 int '*)))

(define igColorPicker3
  (foreign-library-function
   cimgui
   "igColorPicker3"
   #:return-type
   bool
   #:arg-types
   (list '* 3 int)))

(define igColorEditOptionsPopup
  (foreign-library-function
   cimgui
   "igColorEditOptionsPopup"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define igColorEdit4
  (foreign-library-function
   cimgui
   "igColorEdit4"
   #:return-type
   bool
   #:arg-types
   (list '* 4 int)))

(define igColorEdit3
  (foreign-library-function
   cimgui
   "igColorEdit3"
   #:return-type
   bool
   #:arg-types
   (list '* 3 int)))

(define igColorConvertU32ToFloat4
  (foreign-library-function
   cimgui
   "igColorConvertU32ToFloat4"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int)))

(define igColorConvertRGBtoHSV
  (foreign-library-function
   cimgui
   "igColorConvertRGBtoHSV"
   #:return-type
   void
   #:arg-types
   (list float float float '* '* '*)))

(define igColorConvertHSVtoRGB
  (foreign-library-function
   cimgui
   "igColorConvertHSVtoRGB"
   #:return-type
   void
   #:arg-types
   (list float float float '* '* '*)))

(define igColorConvertFloat4ToU32
  (foreign-library-function
   cimgui
   "igColorConvertFloat4ToU32"
   #:return-type
   unsigned-int
   #:arg-types
   (list ImVec4)))

(define igColorButton
  (foreign-library-function
   cimgui
   "igColorButton"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec4 int ImVec2)))

(define igCollapsingHeader
  (foreign-library-function
   cimgui
   "igCollapsingHeader"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igCollapseButton
  (foreign-library-function
   cimgui
   "igCollapseButton"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int ImVec2 '*)))

(define igClosePopupsOverWindow
  (foreign-library-function
   cimgui
   "igClosePopupsOverWindow"
   #:return-type
   void
   #:arg-types
   (list '* bool)))

(define igClosePopupsExceptModals
  (foreign-library-function
   cimgui
   "igClosePopupsExceptModals"
   #:return-type
   void
   #:arg-types
   (list)))

(define igClosePopupToLevel
  (foreign-library-function
   cimgui
   "igClosePopupToLevel"
   #:return-type
   void
   #:arg-types
   (list int bool)))

(define igCloseCurrentPopup
  (foreign-library-function
   cimgui
   "igCloseCurrentPopup"
   #:return-type
   void
   #:arg-types
   (list)))

(define igCloseButton
  (foreign-library-function
   cimgui
   "igCloseButton"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int ImVec2)))

(define igClearWindowSettings
  (foreign-library-function
   cimgui
   "igClearWindowSettings"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igClearIniSettings
  (foreign-library-function
   cimgui
   "igClearIniSettings"
   #:return-type
   void
   #:arg-types
   (list)))

(define igClearDragDrop
  (foreign-library-function
   cimgui
   "igClearDragDrop"
   #:return-type
   void
   #:arg-types
   (list)))

(define igClearActiveID
  (foreign-library-function
   cimgui
   "igClearActiveID"
   #:return-type
   void
   #:arg-types
   (list)))

(define igCheckboxFlags
  (foreign-library-function
   cimgui
   "igCheckboxFlags"
   #:return-type
   bool
   #:arg-types
   (list '* '* int)))

(define igCheckbox
  (foreign-library-function
   cimgui
   "igCheckbox"
   #:return-type
   bool
   #:arg-types
   (list '* '*)))

(define igCallContextHooks
  (foreign-library-function
   cimgui
   "igCallContextHooks"
   #:return-type
   void
   #:arg-types
   (list '* -1)))

(define igCalcWrapWidthForPos
  (foreign-library-function
   cimgui
   "igCalcWrapWidthForPos"
   #:return-type
   float
   #:arg-types
   (list ImVec2 float)))

(define igCalcWindowNextAutoFitSize
  (foreign-library-function
   cimgui
   "igCalcWindowNextAutoFitSize"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igCalcTypematicRepeatAmount
  (foreign-library-function
   cimgui
   "igCalcTypematicRepeatAmount"
   #:return-type
   int
   #:arg-types
   (list float float float float)))

(define igCalcTextSize
  (foreign-library-function
   cimgui
   "igCalcTextSize"
   #:return-type
   void
   #:arg-types
   (list '* '* '* bool float)))

(define igCalcRoundingFlagsForRectInRect
  (foreign-library-function
   cimgui
   "igCalcRoundingFlagsForRectInRect"
   #:return-type
   int
   #:arg-types
   (list ImRect ImRect float)))

(define igCalcItemWidth
  (foreign-library-function
   cimgui
   "igCalcItemWidth"
   #:return-type
   float
   #:arg-types
   (list)))

(define igCalcItemSize
  (foreign-library-function
   cimgui
   "igCalcItemSize"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float float)))

(define igButtonEx
  (foreign-library-function
   cimgui
   "igButtonEx"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2 int)))

(define igButtonBehavior
  (foreign-library-function
   cimgui
   "igButtonBehavior"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int '* '* int)))

(define igButton
  (foreign-library-function
   cimgui
   "igButton"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2)))

(define igBulletTextV
  (foreign-library-function
   cimgui
   "igBulletTextV"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igBulletText
  (foreign-library-function
   cimgui
   "igBulletText"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igBullet
  (foreign-library-function
   cimgui
   "igBullet"
   #:return-type
   void
   #:arg-types
   (list)))

(define igBringWindowToFocusFront
  (foreign-library-function
   cimgui
   "igBringWindowToFocusFront"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igBringWindowToDisplayFront
  (foreign-library-function
   cimgui
   "igBringWindowToDisplayFront"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igBringWindowToDisplayBehind
  (foreign-library-function
   cimgui
   "igBringWindowToDisplayBehind"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igBringWindowToDisplayBack
  (foreign-library-function
   cimgui
   "igBringWindowToDisplayBack"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igBeginViewportSideBar
  (foreign-library-function
   cimgui
   "igBeginViewportSideBar"
   #:return-type
   bool
   #:arg-types
   (list '* '* int float int)))

(define igBeginTooltipHidden
  (foreign-library-function
   cimgui
   "igBeginTooltipHidden"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igBeginTooltipEx
  (foreign-library-function
   cimgui
   "igBeginTooltipEx"
   #:return-type
   bool
   #:arg-types
   (list int int)))

(define igBeginTooltip
  (foreign-library-function
   cimgui
   "igBeginTooltip"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igBeginTableEx
  (foreign-library-function
   cimgui
   "igBeginTableEx"
   #:return-type
   bool
   #:arg-types
   (list '* unsigned-int int int ImVec2 float)))

(define igBeginTable
  (foreign-library-function
   cimgui
   "igBeginTable"
   #:return-type
   bool
   #:arg-types
   (list '* int int ImVec2 float)))

(define igBeginTabItem
  (foreign-library-function
   cimgui
   "igBeginTabItem"
   #:return-type
   bool
   #:arg-types
   (list '* '* int)))

(define igBeginTabBarEx
  (foreign-library-function
   cimgui
   "igBeginTabBarEx"
   #:return-type
   bool
   #:arg-types
   (list '* ImRect int)))

(define igBeginTabBar
  (foreign-library-function
   cimgui
   "igBeginTabBar"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igBeginPopupModal
  (foreign-library-function
   cimgui
   "igBeginPopupModal"
   #:return-type
   bool
   #:arg-types
   (list '* '* int)))

(define igBeginPopupEx
  (foreign-library-function
   cimgui
   "igBeginPopupEx"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int int)))

(define igBeginPopupContextWindow
  (foreign-library-function
   cimgui
   "igBeginPopupContextWindow"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igBeginPopupContextVoid
  (foreign-library-function
   cimgui
   "igBeginPopupContextVoid"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igBeginPopupContextItem
  (foreign-library-function
   cimgui
   "igBeginPopupContextItem"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igBeginPopup
  (foreign-library-function
   cimgui
   "igBeginPopup"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igBeginMultiSelect
  (foreign-library-function
   cimgui
   "igBeginMultiSelect"
   #:return-type
   '*
   #:arg-types
   (list int int int)))

(define igBeginMenuEx
  (foreign-library-function
   cimgui
   "igBeginMenuEx"
   #:return-type
   bool
   #:arg-types
   (list '* '* bool)))

(define igBeginMenuBar
  (foreign-library-function
   cimgui
   "igBeginMenuBar"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igBeginMenu
  (foreign-library-function
   cimgui
   "igBeginMenu"
   #:return-type
   bool
   #:arg-types
   (list '* bool)))

(define igBeginMainMenuBar
  (foreign-library-function
   cimgui
   "igBeginMainMenuBar"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igBeginListBox
  (foreign-library-function
   cimgui
   "igBeginListBox"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2)))

(define igBeginItemTooltip
  (foreign-library-function
   cimgui
   "igBeginItemTooltip"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igBeginGroup
  (foreign-library-function
   cimgui
   "igBeginGroup"
   #:return-type
   void
   #:arg-types
   (list)))

(define igBeginDragDropTargetCustom
  (foreign-library-function
   cimgui
   "igBeginDragDropTargetCustom"
   #:return-type
   bool
   #:arg-types
   (list ImRect unsigned-int)))

(define igBeginDragDropTarget
  (foreign-library-function
   cimgui
   "igBeginDragDropTarget"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igBeginDragDropSource
  (foreign-library-function
   cimgui
   "igBeginDragDropSource"
   #:return-type
   bool
   #:arg-types
   (list int)))

(define igBeginDocked
  (foreign-library-function
   cimgui
   "igBeginDocked"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define igBeginDockableDragDropTarget
  (foreign-library-function
   cimgui
   "igBeginDockableDragDropTarget"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igBeginDockableDragDropSource
  (foreign-library-function
   cimgui
   "igBeginDockableDragDropSource"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igBeginDisabledOverrideReenable
  (foreign-library-function
   cimgui
   "igBeginDisabledOverrideReenable"
   #:return-type
   void
   #:arg-types
   (list)))

(define igBeginDisabled
  (foreign-library-function
   cimgui
   "igBeginDisabled"
   #:return-type
   void
   #:arg-types
   (list bool)))

(define igBeginComboPreview
  (foreign-library-function
   cimgui
   "igBeginComboPreview"
   #:return-type
   bool
   #:arg-types
   (list)))

(define igBeginComboPopup
  (foreign-library-function
   cimgui
   "igBeginComboPopup"
   #:return-type
   bool
   #:arg-types
   (list unsigned-int ImRect int)))

(define igBeginCombo
  (foreign-library-function
   cimgui
   "igBeginCombo"
   #:return-type
   bool
   #:arg-types
   (list '* '* int)))

(define igBeginColumns
  (foreign-library-function
   cimgui
   "igBeginColumns"
   #:return-type
   void
   #:arg-types
   (list '* int int)))

(define igBeginChildEx
  (foreign-library-function
   cimgui
   "igBeginChildEx"
   #:return-type
   bool
   #:arg-types
   (list '* unsigned-int ImVec2 int int)))

(define igBeginChild
  (foreign-library-function
   cimgui
   "igBeginChild"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2 int int)))

(define igBeginBoxSelect
  (foreign-library-function
   cimgui
   "igBeginBoxSelect"
   #:return-type
   bool
   #:arg-types
   (list ImRect '* unsigned-int int)))

(define igBegin
  (foreign-library-function
   cimgui
   "igBegin"
   #:return-type
   bool
   #:arg-types
   (list '* '* int)))

(define igArrowButtonEx
  (foreign-library-function
   cimgui
   "igArrowButtonEx"
   #:return-type
   bool
   #:arg-types
   (list '* int ImVec2 int)))

(define igArrowButton
  (foreign-library-function
   cimgui
   "igArrowButton"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define igAlignTextToFramePadding
  (foreign-library-function
   cimgui
   "igAlignTextToFramePadding"
   #:return-type
   void
   #:arg-types
   (list)))

(define igAddSettingsHandler
  (foreign-library-function
   cimgui
   "igAddSettingsHandler"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define igAddDrawListToDrawDataEx
  (foreign-library-function
   cimgui
   "igAddDrawListToDrawDataEx"
   #:return-type
   void
   #:arg-types
   (list '* '* '*)))

(define igAddContextHook
  (foreign-library-function
   cimgui
   "igAddContextHook"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* '*)))

(define igActivateItemByID
  (foreign-library-function
   cimgui
   "igActivateItemByID"
   #:return-type
   void
   #:arg-types
   (list unsigned-int)))

(define igAcceptDragDropPayload
  (foreign-library-function
   cimgui
   "igAcceptDragDropPayload"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define ImVector_swap
  (foreign-library-function
   cimgui
   "ImVector_swap"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImVector_size_in_bytes
  (foreign-library-function
   cimgui
   "ImVector_size_in_bytes"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImVector_size
  (foreign-library-function
   cimgui
   "ImVector_size"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImVector_shrink
  (foreign-library-function
   cimgui
   "ImVector_shrink"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImVector_resize
  (foreign-library-function
   cimgui
   "ImVector_resize"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImVector_reserve_discard
  (foreign-library-function
   cimgui
   "ImVector_reserve_discard"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImVector_reserve
  (foreign-library-function
   cimgui
   "ImVector_reserve"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImVector_push_front
  (foreign-library-function
   cimgui
   "ImVector_push_front"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVector_push_back
  (foreign-library-function
   cimgui
   "ImVector_push_back"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVector_pop_back
  (foreign-library-function
   cimgui
   "ImVector_pop_back"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVector_max_size
  (foreign-library-function
   cimgui
   "ImVector_max_size"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImVector_insert
  (foreign-library-function
   cimgui
   "ImVector_insert"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define ImVector_index_from_ptr
  (foreign-library-function
   cimgui
   "ImVector_index_from_ptr"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define ImVector_front
  (foreign-library-function
   cimgui
   "ImVector_front"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImVector_find_index
  (foreign-library-function
   cimgui
   "ImVector_find_index"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImVector_find_erase_unsorted
  (foreign-library-function
   cimgui
   "ImVector_find_erase_unsorted"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImVector_find_erase
  (foreign-library-function
   cimgui
   "ImVector_find_erase"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImVector_find
  (foreign-library-function
   cimgui
   "ImVector_find"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImVector_erase_unsorted
  (foreign-library-function
   cimgui
   "ImVector_erase_unsorted"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define ImVector_erase
  (foreign-library-function
   cimgui
   "ImVector_erase"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define ImVector_end
  (foreign-library-function
   cimgui
   "ImVector_end"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImVector_empty
  (foreign-library-function
   cimgui
   "ImVector_empty"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImVector_destroy
  (foreign-library-function
   cimgui
   "ImVector_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVector_contains
  (foreign-library-function
   cimgui
   "ImVector_contains"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImVector_clear_destruct
  (foreign-library-function
   cimgui
   "ImVector_clear_destruct"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVector_clear_delete
  (foreign-library-function
   cimgui
   "ImVector_clear_delete"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVector_clear
  (foreign-library-function
   cimgui
   "ImVector_clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVector_capacity
  (foreign-library-function
   cimgui
   "ImVector_capacity"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImVector_begin
  (foreign-library-function
   cimgui
   "ImVector_begin"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImVector_back
  (foreign-library-function
   cimgui
   "ImVector_back"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImVector__grow_capacity
  (foreign-library-function
   cimgui
   "ImVector__grow_capacity"
   #:return-type
   int
   #:arg-types
   (list '* int)))

(define ImVector_ImVector
  (foreign-library-function
   cimgui
   "ImVector_ImVector"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImVec4_destroy
  (foreign-library-function
   cimgui
   "ImVec4_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVec4_ImVec4
  (foreign-library-function
   cimgui
   "ImVec4_ImVec4"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImVec2ih_destroy
  (foreign-library-function
   cimgui
   "ImVec2ih_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVec2ih_ImVec2ih
  (foreign-library-function
   cimgui
   "ImVec2ih_ImVec2ih"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImVec2_destroy
  (foreign-library-function
   cimgui
   "ImVec2_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVec2_ImVec2
  (foreign-library-function
   cimgui
   "ImVec2_ImVec2"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImVec1_destroy
  (foreign-library-function
   cimgui
   "ImVec1_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImVec1_ImVec1
  (foreign-library-function
   cimgui
   "ImVec1_ImVec1"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImSpan_size_in_bytes
  (foreign-library-function
   cimgui
   "ImSpan_size_in_bytes"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImSpan_size
  (foreign-library-function
   cimgui
   "ImSpan_size"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImSpan_set
  (foreign-library-function
   cimgui
   "ImSpan_set"
   #:return-type
   void
   #:arg-types
   (list '* '* int)))

(define ImSpan_index_from_ptr
  (foreign-library-function
   cimgui
   "ImSpan_index_from_ptr"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define ImSpan_end
  (foreign-library-function
   cimgui
   "ImSpan_end"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImSpan_destroy
  (foreign-library-function
   cimgui
   "ImSpan_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImSpan_begin
  (foreign-library-function
   cimgui
   "ImSpan_begin"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImSpan_ImSpan
  (foreign-library-function
   cimgui
   "ImSpan_ImSpan"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImSpanAllocator_destroy
  (foreign-library-function
   cimgui
   "ImSpanAllocator_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImSpanAllocator_SetArenaBasePtr
  (foreign-library-function
   cimgui
   "ImSpanAllocator_SetArenaBasePtr"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImSpanAllocator_Reserve
  (foreign-library-function
   cimgui
   "ImSpanAllocator_Reserve"
   #:return-type
   void
   #:arg-types
   (list '* int size_t int)))

(define ImSpanAllocator_ImSpanAllocator
  (foreign-library-function
   cimgui
   "ImSpanAllocator_ImSpanAllocator"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImSpanAllocator_GetSpanPtrEnd
  (foreign-library-function
   cimgui
   "ImSpanAllocator_GetSpanPtrEnd"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define ImSpanAllocator_GetSpanPtrBegin
  (foreign-library-function
   cimgui
   "ImSpanAllocator_GetSpanPtrBegin"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define ImSpanAllocator_GetArenaSizeInBytes
  (foreign-library-function
   cimgui
   "ImSpanAllocator_GetArenaSizeInBytes"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImRect_destroy
  (foreign-library-function
   cimgui
   "ImRect_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImRect_TranslateY
  (foreign-library-function
   cimgui
   "ImRect_TranslateY"
   #:return-type
   void
   #:arg-types
   (list '* float)))

(define ImRect_TranslateX
  (foreign-library-function
   cimgui
   "ImRect_TranslateX"
   #:return-type
   void
   #:arg-types
   (list '* float)))

(define ImRect_Translate
  (foreign-library-function
   cimgui
   "ImRect_Translate"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2)))

(define ImRect_ToVec4
  (foreign-library-function
   cimgui
   "ImRect_ToVec4"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImRect_Overlaps
  (foreign-library-function
   cimgui
   "ImRect_Overlaps"
   #:return-type
   bool
   #:arg-types
   (list '* ImRect)))

(define ImRect_IsInverted
  (foreign-library-function
   cimgui
   "ImRect_IsInverted"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImRect_ImRect
  (foreign-library-function
   cimgui
   "ImRect_ImRect"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImRect_GetWidth
  (foreign-library-function
   cimgui
   "ImRect_GetWidth"
   #:return-type
   float
   #:arg-types
   (list '*)))

(define ImRect_GetTR
  (foreign-library-function
   cimgui
   "ImRect_GetTR"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImRect_GetTL
  (foreign-library-function
   cimgui
   "ImRect_GetTL"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImRect_GetSize
  (foreign-library-function
   cimgui
   "ImRect_GetSize"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImRect_GetHeight
  (foreign-library-function
   cimgui
   "ImRect_GetHeight"
   #:return-type
   float
   #:arg-types
   (list '*)))

(define ImRect_GetCenter
  (foreign-library-function
   cimgui
   "ImRect_GetCenter"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImRect_GetBR
  (foreign-library-function
   cimgui
   "ImRect_GetBR"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImRect_GetBL
  (foreign-library-function
   cimgui
   "ImRect_GetBL"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImRect_GetArea
  (foreign-library-function
   cimgui
   "ImRect_GetArea"
   #:return-type
   float
   #:arg-types
   (list '*)))

(define ImRect_Floor
  (foreign-library-function
   cimgui
   "ImRect_Floor"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImRect_Expand
  (foreign-library-function
   cimgui
   "ImRect_Expand"
   #:return-type
   void
   #:arg-types
   (list '* float)))

(define ImRect_ContainsWithPad
  (foreign-library-function
   cimgui
   "ImRect_ContainsWithPad"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2 ImVec2)))

(define ImRect_Contains
  (foreign-library-function
   cimgui
   "ImRect_Contains"
   #:return-type
   bool
   #:arg-types
   (list '* ImVec2)))

(define ImRect_ClipWithFull
  (foreign-library-function
   cimgui
   "ImRect_ClipWithFull"
   #:return-type
   void
   #:arg-types
   (list '* ImRect)))

(define ImRect_ClipWith
  (foreign-library-function
   cimgui
   "ImRect_ClipWith"
   #:return-type
   void
   #:arg-types
   (list '* ImRect)))

(define ImRect_Add
  (foreign-library-function
   cimgui
   "ImRect_Add"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2)))

(define ImPool_destroy
  (foreign-library-function
   cimgui
   "ImPool_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImPool_TryGetMapData
  (foreign-library-function
   cimgui
   "ImPool_TryGetMapData"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define ImPool_Reserve
  (foreign-library-function
   cimgui
   "ImPool_Reserve"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImPool_Remove
  (foreign-library-function
   cimgui
   "ImPool_Remove"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int '*)))

(define ImPool_ImPool
  (foreign-library-function
   cimgui
   "ImPool_ImPool"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImPool_GetOrAddByKey
  (foreign-library-function
   cimgui
   "ImPool_GetOrAddByKey"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int)))

(define ImPool_GetMapSize
  (foreign-library-function
   cimgui
   "ImPool_GetMapSize"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImPool_GetIndex
  (foreign-library-function
   cimgui
   "ImPool_GetIndex"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define ImPool_GetByKey
  (foreign-library-function
   cimgui
   "ImPool_GetByKey"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int)))

(define ImPool_GetByIndex
  (foreign-library-function
   cimgui
   "ImPool_GetByIndex"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define ImPool_GetBufSize
  (foreign-library-function
   cimgui
   "ImPool_GetBufSize"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImPool_GetAliveCount
  (foreign-library-function
   cimgui
   "ImPool_GetAliveCount"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImPool_Contains
  (foreign-library-function
   cimgui
   "ImPool_Contains"
   #:return-type
   bool
   #:arg-types
   (list '* '*)))

(define ImPool_Clear
  (foreign-library-function
   cimgui
   "ImPool_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImPool_Add
  (foreign-library-function
   cimgui
   "ImPool_Add"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImGuiWindow_destroy
  (foreign-library-function
   cimgui
   "ImGuiWindow_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiWindow_TitleBarRect
  (foreign-library-function
   cimgui
   "ImGuiWindow_TitleBarRect"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiWindow_Rect
  (foreign-library-function
   cimgui
   "ImGuiWindow_Rect"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiWindow_MenuBarRect
  (foreign-library-function
   cimgui
   "ImGuiWindow_MenuBarRect"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiWindow_ImGuiWindow
  (foreign-library-function
   cimgui
   "ImGuiWindow_ImGuiWindow"
   #:return-type
   0
   #:arg-types
   (list '* '*)))

(define ImGuiWindow_GetIDFromRectangle
  (foreign-library-function
   cimgui
   "ImGuiWindow_GetIDFromRectangle"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* ImRect)))

(define ImGuiWindow_GetIDFromPos
  (foreign-library-function
   cimgui
   "ImGuiWindow_GetIDFromPos"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* ImVec2)))

(define ImGuiWindow_GetID
  (foreign-library-function
   cimgui
   "ImGuiWindow_GetID"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* '* '*)))

(define ImGuiWindow_CalcFontSize
  (foreign-library-function
   cimgui
   "ImGuiWindow_CalcFontSize"
   #:return-type
   float
   #:arg-types
   (list '*)))

(define ImGuiWindowSettings_destroy
  (foreign-library-function
   cimgui
   "ImGuiWindowSettings_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiWindowSettings_ImGuiWindowSettings
  (foreign-library-function
   cimgui
   "ImGuiWindowSettings_ImGuiWindowSettings"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiWindowSettings_GetName
  (foreign-library-function
   cimgui
   "ImGuiWindowSettings_GetName"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImGuiWindowClass_destroy
  (foreign-library-function
   cimgui
   "ImGuiWindowClass_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiWindowClass_ImGuiWindowClass
  (foreign-library-function
   cimgui
   "ImGuiWindowClass_ImGuiWindowClass"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiViewport_destroy
  (foreign-library-function
   cimgui
   "ImGuiViewport_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiViewport_ImGuiViewport
  (foreign-library-function
   cimgui
   "ImGuiViewport_ImGuiViewport"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiViewport_GetWorkCenter
  (foreign-library-function
   cimgui
   "ImGuiViewport_GetWorkCenter"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiViewport_GetCenter
  (foreign-library-function
   cimgui
   "ImGuiViewport_GetCenter"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiViewportP_destroy
  (foreign-library-function
   cimgui
   "ImGuiViewportP_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiViewportP_UpdateWorkRect
  (foreign-library-function
   cimgui
   "ImGuiViewportP_UpdateWorkRect"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiViewportP_ImGuiViewportP
  (foreign-library-function
   cimgui
   "ImGuiViewportP_ImGuiViewportP"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiViewportP_GetWorkRect
  (foreign-library-function
   cimgui
   "ImGuiViewportP_GetWorkRect"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiViewportP_GetMainRect
  (foreign-library-function
   cimgui
   "ImGuiViewportP_GetMainRect"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiViewportP_GetBuildWorkRect
  (foreign-library-function
   cimgui
   "ImGuiViewportP_GetBuildWorkRect"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiViewportP_ClearRequestFlags
  (foreign-library-function
   cimgui
   "ImGuiViewportP_ClearRequestFlags"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiViewportP_CalcWorkRectSize
  (foreign-library-function
   cimgui
   "ImGuiViewportP_CalcWorkRectSize"
   #:return-type
   void
   #:arg-types
   (list '* '* ImVec2 ImVec2)))

(define ImGuiViewportP_CalcWorkRectPos
  (foreign-library-function
   cimgui
   "ImGuiViewportP_CalcWorkRectPos"
   #:return-type
   void
   #:arg-types
   (list '* '* ImVec2)))

(define ImGuiTypingSelectState_destroy
  (foreign-library-function
   cimgui
   "ImGuiTypingSelectState_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTypingSelectState_ImGuiTypingSelectState
  (foreign-library-function
   cimgui
   "ImGuiTypingSelectState_ImGuiTypingSelectState"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTypingSelectState_Clear
  (foreign-library-function
   cimgui
   "ImGuiTypingSelectState_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTextRange_split
  (foreign-library-function
   cimgui
   "ImGuiTextRange_split"
   #:return-type
   void
   #:arg-types
   (list '* char '*)))

(define ImGuiTextRange_empty
  (foreign-library-function
   cimgui
   "ImGuiTextRange_empty"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiTextRange_destroy
  (foreign-library-function
   cimgui
   "ImGuiTextRange_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTextRange_ImGuiTextRange
  (foreign-library-function
   cimgui
   "ImGuiTextRange_ImGuiTextRange"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTextIndex_size
  (foreign-library-function
   cimgui
   "ImGuiTextIndex_size"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImGuiTextIndex_get_line_end
  (foreign-library-function
   cimgui
   "ImGuiTextIndex_get_line_end"
   #:return-type
   '*
   #:arg-types
   (list '* '* int)))

(define ImGuiTextIndex_get_line_begin
  (foreign-library-function
   cimgui
   "ImGuiTextIndex_get_line_begin"
   #:return-type
   '*
   #:arg-types
   (list '* '* int)))

(define ImGuiTextIndex_clear
  (foreign-library-function
   cimgui
   "ImGuiTextIndex_clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTextIndex_append
  (foreign-library-function
   cimgui
   "ImGuiTextIndex_append"
   #:return-type
   void
   #:arg-types
   (list '* '* int int)))

(define ImGuiTextFilter_destroy
  (foreign-library-function
   cimgui
   "ImGuiTextFilter_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTextFilter_PassFilter
  (foreign-library-function
   cimgui
   "ImGuiTextFilter_PassFilter"
   #:return-type
   bool
   #:arg-types
   (list '* '* '*)))

(define ImGuiTextFilter_IsActive
  (foreign-library-function
   cimgui
   "ImGuiTextFilter_IsActive"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiTextFilter_ImGuiTextFilter
  (foreign-library-function
   cimgui
   "ImGuiTextFilter_ImGuiTextFilter"
   #:return-type
   0
   #:arg-types
   (list '*)))

(define ImGuiTextFilter_Draw
  (foreign-library-function
   cimgui
   "ImGuiTextFilter_Draw"
   #:return-type
   bool
   #:arg-types
   (list '* '* float)))

(define ImGuiTextFilter_Clear
  (foreign-library-function
   cimgui
   "ImGuiTextFilter_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTextFilter_Build
  (foreign-library-function
   cimgui
   "ImGuiTextFilter_Build"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTextBuffer_size
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_size"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImGuiTextBuffer_reserve
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_reserve"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImGuiTextBuffer_end
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_end"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImGuiTextBuffer_empty
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_empty"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiTextBuffer_destroy
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTextBuffer_clear
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTextBuffer_c_str
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_c_str"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImGuiTextBuffer_begin
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_begin"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImGuiTextBuffer_appendfv
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_appendfv"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiTextBuffer_appendf
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_appendf"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiTextBuffer_append
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_append"
   #:return-type
   void
   #:arg-types
   (list '* '* '*)))

(define ImGuiTextBuffer_ImGuiTextBuffer
  (foreign-library-function
   cimgui
   "ImGuiTextBuffer_ImGuiTextBuffer"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTable_destroy
  (foreign-library-function
   cimgui
   "ImGuiTable_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTable_ImGuiTable
  (foreign-library-function
   cimgui
   "ImGuiTable_ImGuiTable"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTableTempData_destroy
  (foreign-library-function
   cimgui
   "ImGuiTableTempData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTableTempData_ImGuiTableTempData
  (foreign-library-function
   cimgui
   "ImGuiTableTempData_ImGuiTableTempData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTableSortSpecs_destroy
  (foreign-library-function
   cimgui
   "ImGuiTableSortSpecs_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTableSortSpecs_ImGuiTableSortSpecs
  (foreign-library-function
   cimgui
   "ImGuiTableSortSpecs_ImGuiTableSortSpecs"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTableSettings_destroy
  (foreign-library-function
   cimgui
   "ImGuiTableSettings_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTableSettings_ImGuiTableSettings
  (foreign-library-function
   cimgui
   "ImGuiTableSettings_ImGuiTableSettings"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTableSettings_GetColumnSettings
  (foreign-library-function
   cimgui
   "ImGuiTableSettings_GetColumnSettings"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImGuiTableInstanceData_destroy
  (foreign-library-function
   cimgui
   "ImGuiTableInstanceData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTableInstanceData_ImGuiTableInstanceData
  (foreign-library-function
   cimgui
   "ImGuiTableInstanceData_ImGuiTableInstanceData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTableColumn_destroy
  (foreign-library-function
   cimgui
   "ImGuiTableColumn_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTableColumn_ImGuiTableColumn
  (foreign-library-function
   cimgui
   "ImGuiTableColumn_ImGuiTableColumn"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTableColumnSortSpecs_destroy
  (foreign-library-function
   cimgui
   "ImGuiTableColumnSortSpecs_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs
  (foreign-library-function
   cimgui
   "ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTableColumnSettings_destroy
  (foreign-library-function
   cimgui
   "ImGuiTableColumnSettings_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTableColumnSettings_ImGuiTableColumnSettings
  (foreign-library-function
   cimgui
   "ImGuiTableColumnSettings_ImGuiTableColumnSettings"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTabItem_destroy
  (foreign-library-function
   cimgui
   "ImGuiTabItem_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTabItem_ImGuiTabItem
  (foreign-library-function
   cimgui
   "ImGuiTabItem_ImGuiTabItem"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiTabBar_destroy
  (foreign-library-function
   cimgui
   "ImGuiTabBar_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiTabBar_ImGuiTabBar
  (foreign-library-function
   cimgui
   "ImGuiTabBar_ImGuiTabBar"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiStyle_destroy
  (foreign-library-function
   cimgui
   "ImGuiStyle_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiStyle_ScaleAllSizes
  (foreign-library-function
   cimgui
   "ImGuiStyle_ScaleAllSizes"
   #:return-type
   void
   #:arg-types
   (list '* float)))

(define ImGuiStyle_ImGuiStyle
  (foreign-library-function
   cimgui
   "ImGuiStyle_ImGuiStyle"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiStyleMod_destroy
  (foreign-library-function
   cimgui
   "ImGuiStyleMod_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiStyleMod_ImGuiStyleMod
  (foreign-library-function
   cimgui
   "ImGuiStyleMod_ImGuiStyleMod"
   #:return-type
   0
   #:arg-types
   (list int int)))

(define ImGuiStorage_SetVoidPtr
  (foreign-library-function
   cimgui
   "ImGuiStorage_SetVoidPtr"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int '*)))

(define ImGuiStorage_SetInt
  (foreign-library-function
   cimgui
   "ImGuiStorage_SetInt"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int int)))

(define ImGuiStorage_SetFloat
  (foreign-library-function
   cimgui
   "ImGuiStorage_SetFloat"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int float)))

(define ImGuiStorage_SetBool
  (foreign-library-function
   cimgui
   "ImGuiStorage_SetBool"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int bool)))

(define ImGuiStorage_SetAllInt
  (foreign-library-function
   cimgui
   "ImGuiStorage_SetAllInt"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImGuiStorage_GetVoidPtrRef
  (foreign-library-function
   cimgui
   "ImGuiStorage_GetVoidPtrRef"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int '*)))

(define ImGuiStorage_GetVoidPtr
  (foreign-library-function
   cimgui
   "ImGuiStorage_GetVoidPtr"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int)))

(define ImGuiStorage_GetIntRef
  (foreign-library-function
   cimgui
   "ImGuiStorage_GetIntRef"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int int)))

(define ImGuiStorage_GetInt
  (foreign-library-function
   cimgui
   "ImGuiStorage_GetInt"
   #:return-type
   int
   #:arg-types
   (list '* unsigned-int int)))

(define ImGuiStorage_GetFloatRef
  (foreign-library-function
   cimgui
   "ImGuiStorage_GetFloatRef"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int float)))

(define ImGuiStorage_GetFloat
  (foreign-library-function
   cimgui
   "ImGuiStorage_GetFloat"
   #:return-type
   float
   #:arg-types
   (list '* unsigned-int float)))

(define ImGuiStorage_GetBoolRef
  (foreign-library-function
   cimgui
   "ImGuiStorage_GetBoolRef"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-int bool)))

(define ImGuiStorage_GetBool
  (foreign-library-function
   cimgui
   "ImGuiStorage_GetBool"
   #:return-type
   bool
   #:arg-types
   (list '* unsigned-int bool)))

(define ImGuiStorage_Clear
  (foreign-library-function
   cimgui
   "ImGuiStorage_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiStorage_BuildSortByKey
  (foreign-library-function
   cimgui
   "ImGuiStorage_BuildSortByKey"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiStoragePair_destroy
  (foreign-library-function
   cimgui
   "ImGuiStoragePair_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiStoragePair_ImGuiStoragePair
  (foreign-library-function
   cimgui
   "ImGuiStoragePair_ImGuiStoragePair"
   #:return-type
   0
   #:arg-types
   (list unsigned-int int)))

(define ImGuiStackSizes_destroy
  (foreign-library-function
   cimgui
   "ImGuiStackSizes_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiStackSizes_SetToContextState
  (foreign-library-function
   cimgui
   "ImGuiStackSizes_SetToContextState"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiStackSizes_ImGuiStackSizes
  (foreign-library-function
   cimgui
   "ImGuiStackSizes_ImGuiStackSizes"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiStackSizes_CompareWithContextState
  (foreign-library-function
   cimgui
   "ImGuiStackSizes_CompareWithContextState"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiStackLevelInfo_destroy
  (foreign-library-function
   cimgui
   "ImGuiStackLevelInfo_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiStackLevelInfo_ImGuiStackLevelInfo
  (foreign-library-function
   cimgui
   "ImGuiStackLevelInfo_ImGuiStackLevelInfo"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiSettingsHandler_destroy
  (foreign-library-function
   cimgui
   "ImGuiSettingsHandler_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiSettingsHandler_ImGuiSettingsHandler
  (foreign-library-function
   cimgui
   "ImGuiSettingsHandler_ImGuiSettingsHandler"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiSelectionExternalStorage_destroy
  (foreign-library-function
   cimgui
   "ImGuiSelectionExternalStorage_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiSelectionExternalStorage_ImGuiSelectionExternalStorage
  (foreign-library-function
   cimgui
   "ImGuiSelectionExternalStorage_ImGuiSelectionExternalStorage"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiSelectionExternalStorage_ApplyRequests
  (foreign-library-function
   cimgui
   "ImGuiSelectionExternalStorage_ApplyRequests"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiSelectionBasicStorage_destroy
  (foreign-library-function
   cimgui
   "ImGuiSelectionBasicStorage_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiSelectionBasicStorage_Swap
  (foreign-library-function
   cimgui
   "ImGuiSelectionBasicStorage_Swap"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiSelectionBasicStorage_SetItemSelected
  (foreign-library-function
   cimgui
   "ImGuiSelectionBasicStorage_SetItemSelected"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int bool)))

(define ImGuiSelectionBasicStorage_ImGuiSelectionBasicStorage
  (foreign-library-function
   cimgui
   "ImGuiSelectionBasicStorage_ImGuiSelectionBasicStorage"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiSelectionBasicStorage_GetStorageIdFromIndex
  (foreign-library-function
   cimgui
   "ImGuiSelectionBasicStorage_GetStorageIdFromIndex"
   #:return-type
   unsigned-int
   #:arg-types
   (list '* int)))

(define ImGuiSelectionBasicStorage_GetNextSelectedItem
  (foreign-library-function
   cimgui
   "ImGuiSelectionBasicStorage_GetNextSelectedItem"
   #:return-type
   bool
   #:arg-types
   (list '* '* '*)))

(define ImGuiSelectionBasicStorage_Contains
  (foreign-library-function
   cimgui
   "ImGuiSelectionBasicStorage_Contains"
   #:return-type
   bool
   #:arg-types
   (list '* unsigned-int)))

(define ImGuiSelectionBasicStorage_Clear
  (foreign-library-function
   cimgui
   "ImGuiSelectionBasicStorage_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiSelectionBasicStorage_ApplyRequests
  (foreign-library-function
   cimgui
   "ImGuiSelectionBasicStorage_ApplyRequests"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiPtrOrIndex_destroy
  (foreign-library-function
   cimgui
   "ImGuiPtrOrIndex_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiPtrOrIndex_ImGuiPtrOrIndex
  (foreign-library-function
   cimgui
   "ImGuiPtrOrIndex_ImGuiPtrOrIndex"
   #:return-type
   0
   #:arg-types
   (list '*)))

(define ImGuiPopupData_destroy
  (foreign-library-function
   cimgui
   "ImGuiPopupData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiPopupData_ImGuiPopupData
  (foreign-library-function
   cimgui
   "ImGuiPopupData_ImGuiPopupData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiPlatformMonitor_destroy
  (foreign-library-function
   cimgui
   "ImGuiPlatformMonitor_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiPlatformMonitor_ImGuiPlatformMonitor
  (foreign-library-function
   cimgui
   "ImGuiPlatformMonitor_ImGuiPlatformMonitor"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiPlatformImeData_destroy
  (foreign-library-function
   cimgui
   "ImGuiPlatformImeData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiPlatformImeData_ImGuiPlatformImeData
  (foreign-library-function
   cimgui
   "ImGuiPlatformImeData_ImGuiPlatformImeData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiPlatformIO_destroy
  (foreign-library-function
   cimgui
   "ImGuiPlatformIO_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiPlatformIO_ImGuiPlatformIO
  (foreign-library-function
   cimgui
   "ImGuiPlatformIO_ImGuiPlatformIO"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiPayload_destroy
  (foreign-library-function
   cimgui
   "ImGuiPayload_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiPayload_IsPreview
  (foreign-library-function
   cimgui
   "ImGuiPayload_IsPreview"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiPayload_IsDelivery
  (foreign-library-function
   cimgui
   "ImGuiPayload_IsDelivery"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiPayload_IsDataType
  (foreign-library-function
   cimgui
   "ImGuiPayload_IsDataType"
   #:return-type
   bool
   #:arg-types
   (list '* '*)))

(define ImGuiPayload_ImGuiPayload
  (foreign-library-function
   cimgui
   "ImGuiPayload_ImGuiPayload"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiPayload_Clear
  (foreign-library-function
   cimgui
   "ImGuiPayload_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiOnceUponAFrame_destroy
  (foreign-library-function
   cimgui
   "ImGuiOnceUponAFrame_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiOnceUponAFrame_ImGuiOnceUponAFrame
  (foreign-library-function
   cimgui
   "ImGuiOnceUponAFrame_ImGuiOnceUponAFrame"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiOldColumns_destroy
  (foreign-library-function
   cimgui
   "ImGuiOldColumns_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiOldColumns_ImGuiOldColumns
  (foreign-library-function
   cimgui
   "ImGuiOldColumns_ImGuiOldColumns"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiOldColumnData_destroy
  (foreign-library-function
   cimgui
   "ImGuiOldColumnData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiOldColumnData_ImGuiOldColumnData
  (foreign-library-function
   cimgui
   "ImGuiOldColumnData_ImGuiOldColumnData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiNextWindowData_destroy
  (foreign-library-function
   cimgui
   "ImGuiNextWindowData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiNextWindowData_ImGuiNextWindowData
  (foreign-library-function
   cimgui
   "ImGuiNextWindowData_ImGuiNextWindowData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiNextWindowData_ClearFlags
  (foreign-library-function
   cimgui
   "ImGuiNextWindowData_ClearFlags"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiNextItemData_destroy
  (foreign-library-function
   cimgui
   "ImGuiNextItemData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiNextItemData_ImGuiNextItemData
  (foreign-library-function
   cimgui
   "ImGuiNextItemData_ImGuiNextItemData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiNextItemData_ClearFlags
  (foreign-library-function
   cimgui
   "ImGuiNextItemData_ClearFlags"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiNavItemData_destroy
  (foreign-library-function
   cimgui
   "ImGuiNavItemData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiNavItemData_ImGuiNavItemData
  (foreign-library-function
   cimgui
   "ImGuiNavItemData_ImGuiNavItemData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiNavItemData_Clear
  (foreign-library-function
   cimgui
   "ImGuiNavItemData_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiMultiSelectTempData_destroy
  (foreign-library-function
   cimgui
   "ImGuiMultiSelectTempData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiMultiSelectTempData_ImGuiMultiSelectTempData
  (foreign-library-function
   cimgui
   "ImGuiMultiSelectTempData_ImGuiMultiSelectTempData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiMultiSelectTempData_ClearIO
  (foreign-library-function
   cimgui
   "ImGuiMultiSelectTempData_ClearIO"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiMultiSelectTempData_Clear
  (foreign-library-function
   cimgui
   "ImGuiMultiSelectTempData_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiMultiSelectState_destroy
  (foreign-library-function
   cimgui
   "ImGuiMultiSelectState_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiMultiSelectState_ImGuiMultiSelectState
  (foreign-library-function
   cimgui
   "ImGuiMultiSelectState_ImGuiMultiSelectState"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiMenuColumns_destroy
  (foreign-library-function
   cimgui
   "ImGuiMenuColumns_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiMenuColumns_Update
  (foreign-library-function
   cimgui
   "ImGuiMenuColumns_Update"
   #:return-type
   void
   #:arg-types
   (list '* float bool)))

(define ImGuiMenuColumns_ImGuiMenuColumns
  (foreign-library-function
   cimgui
   "ImGuiMenuColumns_ImGuiMenuColumns"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiMenuColumns_DeclColumns
  (foreign-library-function
   cimgui
   "ImGuiMenuColumns_DeclColumns"
   #:return-type
   float
   #:arg-types
   (list '* float float float float)))

(define ImGuiMenuColumns_CalcNextTotalWidth
  (foreign-library-function
   cimgui
   "ImGuiMenuColumns_CalcNextTotalWidth"
   #:return-type
   void
   #:arg-types
   (list '* bool)))

(define ImGuiListClipper_destroy
  (foreign-library-function
   cimgui
   "ImGuiListClipper_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiListClipper_Step
  (foreign-library-function
   cimgui
   "ImGuiListClipper_Step"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiListClipper_SeekCursorForItem
  (foreign-library-function
   cimgui
   "ImGuiListClipper_SeekCursorForItem"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImGuiListClipper_IncludeItemsByIndex
  (foreign-library-function
   cimgui
   "ImGuiListClipper_IncludeItemsByIndex"
   #:return-type
   void
   #:arg-types
   (list '* int int)))

(define ImGuiListClipper_IncludeItemByIndex
  (foreign-library-function
   cimgui
   "ImGuiListClipper_IncludeItemByIndex"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImGuiListClipper_ImGuiListClipper
  (foreign-library-function
   cimgui
   "ImGuiListClipper_ImGuiListClipper"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiListClipper_End
  (foreign-library-function
   cimgui
   "ImGuiListClipper_End"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiListClipper_Begin
  (foreign-library-function
   cimgui
   "ImGuiListClipper_Begin"
   #:return-type
   void
   #:arg-types
   (list '* int float)))

(define ImGuiListClipperRange_FromPositions
  (foreign-library-function
   cimgui
   "ImGuiListClipperRange_FromPositions"
   #:return-type
   -1
   #:arg-types
   (list float float int int)))

(define ImGuiListClipperRange_FromIndices
  (foreign-library-function
   cimgui
   "ImGuiListClipperRange_FromIndices"
   #:return-type
   -1
   #:arg-types
   (list int int)))

(define ImGuiListClipperData_destroy
  (foreign-library-function
   cimgui
   "ImGuiListClipperData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiListClipperData_Reset
  (foreign-library-function
   cimgui
   "ImGuiListClipperData_Reset"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiListClipperData_ImGuiListClipperData
  (foreign-library-function
   cimgui
   "ImGuiListClipperData_ImGuiListClipperData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiLastItemData_destroy
  (foreign-library-function
   cimgui
   "ImGuiLastItemData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiLastItemData_ImGuiLastItemData
  (foreign-library-function
   cimgui
   "ImGuiLastItemData_ImGuiLastItemData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiKeyRoutingTable_destroy
  (foreign-library-function
   cimgui
   "ImGuiKeyRoutingTable_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiKeyRoutingTable_ImGuiKeyRoutingTable
  (foreign-library-function
   cimgui
   "ImGuiKeyRoutingTable_ImGuiKeyRoutingTable"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiKeyRoutingTable_Clear
  (foreign-library-function
   cimgui
   "ImGuiKeyRoutingTable_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiKeyRoutingData_destroy
  (foreign-library-function
   cimgui
   "ImGuiKeyRoutingData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiKeyRoutingData_ImGuiKeyRoutingData
  (foreign-library-function
   cimgui
   "ImGuiKeyRoutingData_ImGuiKeyRoutingData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiKeyOwnerData_destroy
  (foreign-library-function
   cimgui
   "ImGuiKeyOwnerData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiKeyOwnerData_ImGuiKeyOwnerData
  (foreign-library-function
   cimgui
   "ImGuiKeyOwnerData_ImGuiKeyOwnerData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiInputTextState_destroy
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_SelectAll
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_SelectAll"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_ReloadUserBufAndSelectAll
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_ReloadUserBufAndSelectAll"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_ReloadUserBufAndMoveToEnd
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_ReloadUserBufAndMoveToEnd"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_ReloadUserBufAndKeepSelection
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_ReloadUserBufAndKeepSelection"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_OnKeyPressed
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_OnKeyPressed"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImGuiInputTextState_ImGuiInputTextState
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_ImGuiInputTextState"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiInputTextState_HasSelection
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_HasSelection"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_GetUndoAvailCount
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_GetUndoAvailCount"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_GetSelectionStart
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_GetSelectionStart"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_GetSelectionEnd
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_GetSelectionEnd"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_GetRedoAvailCount
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_GetRedoAvailCount"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_GetCursorPos
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_GetCursorPos"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_CursorClamp
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_CursorClamp"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_CursorAnimReset
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_CursorAnimReset"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_ClearText
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_ClearText"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_ClearSelection
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_ClearSelection"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextState_ClearFreeMemory
  (foreign-library-function
   cimgui
   "ImGuiInputTextState_ClearFreeMemory"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextDeactivatedState_destroy
  (foreign-library-function
   cimgui
   "ImGuiInputTextDeactivatedState_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState
  (foreign-library-function
   cimgui
   "ImGuiInputTextDeactivatedState_ImGuiInputTextDeactivatedState"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiInputTextDeactivatedState_ClearFreeMemory
  (foreign-library-function
   cimgui
   "ImGuiInputTextDeactivatedState_ClearFreeMemory"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextCallbackData_destroy
  (foreign-library-function
   cimgui
   "ImGuiInputTextCallbackData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextCallbackData_SelectAll
  (foreign-library-function
   cimgui
   "ImGuiInputTextCallbackData_SelectAll"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputTextCallbackData_InsertChars
  (foreign-library-function
   cimgui
   "ImGuiInputTextCallbackData_InsertChars"
   #:return-type
   void
   #:arg-types
   (list '* int '* '*)))

(define ImGuiInputTextCallbackData_ImGuiInputTextCallbackData
  (foreign-library-function
   cimgui
   "ImGuiInputTextCallbackData_ImGuiInputTextCallbackData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiInputTextCallbackData_HasSelection
  (foreign-library-function
   cimgui
   "ImGuiInputTextCallbackData_HasSelection"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiInputTextCallbackData_DeleteChars
  (foreign-library-function
   cimgui
   "ImGuiInputTextCallbackData_DeleteChars"
   #:return-type
   void
   #:arg-types
   (list '* int int)))

(define ImGuiInputTextCallbackData_ClearSelection
  (foreign-library-function
   cimgui
   "ImGuiInputTextCallbackData_ClearSelection"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputEvent_destroy
  (foreign-library-function
   cimgui
   "ImGuiInputEvent_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiInputEvent_ImGuiInputEvent
  (foreign-library-function
   cimgui
   "ImGuiInputEvent_ImGuiInputEvent"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiIO_destroy
  (foreign-library-function
   cimgui
   "ImGuiIO_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiIO_SetKeyEventNativeData
  (foreign-library-function
   cimgui
   "ImGuiIO_SetKeyEventNativeData"
   #:return-type
   void
   #:arg-types
   (list '* int int int int)))

(define ImGuiIO_SetAppAcceptingEvents
  (foreign-library-function
   cimgui
   "ImGuiIO_SetAppAcceptingEvents"
   #:return-type
   void
   #:arg-types
   (list '* bool)))

(define ImGuiIO_ImGuiIO
  (foreign-library-function
   cimgui
   "ImGuiIO_ImGuiIO"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiIO_ClearInputMouse
  (foreign-library-function
   cimgui
   "ImGuiIO_ClearInputMouse"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiIO_ClearInputKeys
  (foreign-library-function
   cimgui
   "ImGuiIO_ClearInputKeys"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiIO_ClearEventsQueue
  (foreign-library-function
   cimgui
   "ImGuiIO_ClearEventsQueue"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiIO_AddMouseWheelEvent
  (foreign-library-function
   cimgui
   "ImGuiIO_AddMouseWheelEvent"
   #:return-type
   void
   #:arg-types
   (list '* float float)))

(define ImGuiIO_AddMouseViewportEvent
  (foreign-library-function
   cimgui
   "ImGuiIO_AddMouseViewportEvent"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int)))

(define ImGuiIO_AddMouseSourceEvent
  (foreign-library-function
   cimgui
   "ImGuiIO_AddMouseSourceEvent"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImGuiIO_AddMousePosEvent
  (foreign-library-function
   cimgui
   "ImGuiIO_AddMousePosEvent"
   #:return-type
   void
   #:arg-types
   (list '* float float)))

(define ImGuiIO_AddMouseButtonEvent
  (foreign-library-function
   cimgui
   "ImGuiIO_AddMouseButtonEvent"
   #:return-type
   void
   #:arg-types
   (list '* int bool)))

(define ImGuiIO_AddKeyEvent
  (foreign-library-function
   cimgui
   "ImGuiIO_AddKeyEvent"
   #:return-type
   void
   #:arg-types
   (list '* int bool)))

(define ImGuiIO_AddKeyAnalogEvent
  (foreign-library-function
   cimgui
   "ImGuiIO_AddKeyAnalogEvent"
   #:return-type
   void
   #:arg-types
   (list '* int bool float)))

(define ImGuiIO_AddInputCharactersUTF8
  (foreign-library-function
   cimgui
   "ImGuiIO_AddInputCharactersUTF8"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiIO_AddInputCharacterUTF16
  (foreign-library-function
   cimgui
   "ImGuiIO_AddInputCharacterUTF16"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-short)))

(define ImGuiIO_AddInputCharacter
  (foreign-library-function
   cimgui
   "ImGuiIO_AddInputCharacter"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int)))

(define ImGuiIO_AddFocusEvent
  (foreign-library-function
   cimgui
   "ImGuiIO_AddFocusEvent"
   #:return-type
   void
   #:arg-types
   (list '* bool)))

(define ImGuiIDStackTool_destroy
  (foreign-library-function
   cimgui
   "ImGuiIDStackTool_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiIDStackTool_ImGuiIDStackTool
  (foreign-library-function
   cimgui
   "ImGuiIDStackTool_ImGuiIDStackTool"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiDockNode_destroy
  (foreign-library-function
   cimgui
   "ImGuiDockNode_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiDockNode_UpdateMergedFlags
  (foreign-library-function
   cimgui
   "ImGuiDockNode_UpdateMergedFlags"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiDockNode_SetLocalFlags
  (foreign-library-function
   cimgui
   "ImGuiDockNode_SetLocalFlags"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImGuiDockNode_Rect
  (foreign-library-function
   cimgui
   "ImGuiDockNode_Rect"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImGuiDockNode_IsSplitNode
  (foreign-library-function
   cimgui
   "ImGuiDockNode_IsSplitNode"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiDockNode_IsRootNode
  (foreign-library-function
   cimgui
   "ImGuiDockNode_IsRootNode"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiDockNode_IsNoTabBar
  (foreign-library-function
   cimgui
   "ImGuiDockNode_IsNoTabBar"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiDockNode_IsLeafNode
  (foreign-library-function
   cimgui
   "ImGuiDockNode_IsLeafNode"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiDockNode_IsHiddenTabBar
  (foreign-library-function
   cimgui
   "ImGuiDockNode_IsHiddenTabBar"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiDockNode_IsFloatingNode
  (foreign-library-function
   cimgui
   "ImGuiDockNode_IsFloatingNode"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiDockNode_IsEmpty
  (foreign-library-function
   cimgui
   "ImGuiDockNode_IsEmpty"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiDockNode_IsDockSpace
  (foreign-library-function
   cimgui
   "ImGuiDockNode_IsDockSpace"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiDockNode_IsCentralNode
  (foreign-library-function
   cimgui
   "ImGuiDockNode_IsCentralNode"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImGuiDockNode_ImGuiDockNode
  (foreign-library-function
   cimgui
   "ImGuiDockNode_ImGuiDockNode"
   #:return-type
   0
   #:arg-types
   (list unsigned-int)))

(define ImGuiDockContext_destroy
  (foreign-library-function
   cimgui
   "ImGuiDockContext_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiDockContext_ImGuiDockContext
  (foreign-library-function
   cimgui
   "ImGuiDockContext_ImGuiDockContext"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiDebugAllocInfo_destroy
  (foreign-library-function
   cimgui
   "ImGuiDebugAllocInfo_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiDebugAllocInfo_ImGuiDebugAllocInfo
  (foreign-library-function
   cimgui
   "ImGuiDebugAllocInfo_ImGuiDebugAllocInfo"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiDataVarInfo_GetVarPtr
  (foreign-library-function
   cimgui
   "ImGuiDataVarInfo_GetVarPtr"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define ImGuiContext_destroy
  (foreign-library-function
   cimgui
   "ImGuiContext_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiContext_ImGuiContext
  (foreign-library-function
   cimgui
   "ImGuiContext_ImGuiContext"
   #:return-type
   0
   #:arg-types
   (list '*)))

(define ImGuiContextHook_destroy
  (foreign-library-function
   cimgui
   "ImGuiContextHook_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiContextHook_ImGuiContextHook
  (foreign-library-function
   cimgui
   "ImGuiContextHook_ImGuiContextHook"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiComboPreviewData_destroy
  (foreign-library-function
   cimgui
   "ImGuiComboPreviewData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiComboPreviewData_ImGuiComboPreviewData
  (foreign-library-function
   cimgui
   "ImGuiComboPreviewData_ImGuiComboPreviewData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImGuiBoxSelectState_destroy
  (foreign-library-function
   cimgui
   "ImGuiBoxSelectState_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImGuiBoxSelectState_ImGuiBoxSelectState
  (foreign-library-function
   cimgui
   "ImGuiBoxSelectState_ImGuiBoxSelectState"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImFont_destroy
  (foreign-library-function
   cimgui
   "ImFont_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFont_SetGlyphVisible
  (foreign-library-function
   cimgui
   "ImFont_SetGlyphVisible"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-short bool)))

(define ImFont_RenderText
  (foreign-library-function
   cimgui
   "ImFont_RenderText"
   #:return-type
   void
   #:arg-types
   (list '* '* float ImVec2 unsigned-int ImVec4 '* '* float bool)))

(define ImFont_RenderChar
  (foreign-library-function
   cimgui
   "ImFont_RenderChar"
   #:return-type
   void
   #:arg-types
   (list '* '* float ImVec2 unsigned-int unsigned-short)))

(define ImFont_IsLoaded
  (foreign-library-function
   cimgui
   "ImFont_IsLoaded"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImFont_IsGlyphRangeUnused
  (foreign-library-function
   cimgui
   "ImFont_IsGlyphRangeUnused"
   #:return-type
   bool
   #:arg-types
   (list '* unsigned-int unsigned-int)))

(define ImFont_ImFont
  (foreign-library-function
   cimgui
   "ImFont_ImFont"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImFont_GrowIndex
  (foreign-library-function
   cimgui
   "ImFont_GrowIndex"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImFont_GetDebugName
  (foreign-library-function
   cimgui
   "ImFont_GetDebugName"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFont_GetCharAdvance
  (foreign-library-function
   cimgui
   "ImFont_GetCharAdvance"
   #:return-type
   float
   #:arg-types
   (list '* unsigned-short)))

(define ImFont_FindGlyphNoFallback
  (foreign-library-function
   cimgui
   "ImFont_FindGlyphNoFallback"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-short)))

(define ImFont_FindGlyph
  (foreign-library-function
   cimgui
   "ImFont_FindGlyph"
   #:return-type
   '*
   #:arg-types
   (list '* unsigned-short)))

(define ImFont_ClearOutputData
  (foreign-library-function
   cimgui
   "ImFont_ClearOutputData"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFont_CalcWordWrapPositionA
  (foreign-library-function
   cimgui
   "ImFont_CalcWordWrapPositionA"
   #:return-type
   '*
   #:arg-types
   (list '* float '* '* float)))

(define ImFont_CalcTextSizeA
  (foreign-library-function
   cimgui
   "ImFont_CalcTextSizeA"
   #:return-type
   void
   #:arg-types
   (list '* '* float float float '* '* '*)))

(define ImFont_BuildLookupTable
  (foreign-library-function
   cimgui
   "ImFont_BuildLookupTable"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFont_AddRemapChar
  (foreign-library-function
   cimgui
   "ImFont_AddRemapChar"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-short unsigned-short bool)))

(define ImFont_AddGlyph
  (foreign-library-function
   cimgui
   "ImFont_AddGlyph"
   #:return-type
   void
   #:arg-types
   (list '*
         '*
         unsigned-short
         float
         float
         float
         float
         float
         float
         float
         float
         float)))

(define ImFontGlyphRangesBuilder_destroy
  (foreign-library-function
   cimgui
   "ImFontGlyphRangesBuilder_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFontGlyphRangesBuilder_SetBit
  (foreign-library-function
   cimgui
   "ImFontGlyphRangesBuilder_SetBit"
   #:return-type
   void
   #:arg-types
   (list '* size_t)))

(define ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder
  (foreign-library-function
   cimgui
   "ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImFontGlyphRangesBuilder_GetBit
  (foreign-library-function
   cimgui
   "ImFontGlyphRangesBuilder_GetBit"
   #:return-type
   bool
   #:arg-types
   (list '* size_t)))

(define ImFontGlyphRangesBuilder_Clear
  (foreign-library-function
   cimgui
   "ImFontGlyphRangesBuilder_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFontGlyphRangesBuilder_BuildRanges
  (foreign-library-function
   cimgui
   "ImFontGlyphRangesBuilder_BuildRanges"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImFontGlyphRangesBuilder_AddText
  (foreign-library-function
   cimgui
   "ImFontGlyphRangesBuilder_AddText"
   #:return-type
   void
   #:arg-types
   (list '* '* '*)))

(define ImFontGlyphRangesBuilder_AddRanges
  (foreign-library-function
   cimgui
   "ImFontGlyphRangesBuilder_AddRanges"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImFontGlyphRangesBuilder_AddChar
  (foreign-library-function
   cimgui
   "ImFontGlyphRangesBuilder_AddChar"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-short)))

(define ImFontConfig_destroy
  (foreign-library-function
   cimgui
   "ImFontConfig_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFontConfig_ImFontConfig
  (foreign-library-function
   cimgui
   "ImFontConfig_ImFontConfig"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImFontAtlas_destroy
  (foreign-library-function
   cimgui
   "ImFontAtlas_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFontAtlas_SetTexID
  (foreign-library-function
   cimgui
   "ImFontAtlas_SetTexID"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImFontAtlas_IsBuilt
  (foreign-library-function
   cimgui
   "ImFontAtlas_IsBuilt"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImFontAtlas_ImFontAtlas
  (foreign-library-function
   cimgui
   "ImFontAtlas_ImFontAtlas"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImFontAtlas_GetTexDataAsRGBA32
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetTexDataAsRGBA32"
   #:return-type
   void
   #:arg-types
   (list '* '* '* '* '*)))

(define ImFontAtlas_GetTexDataAsAlpha8
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetTexDataAsAlpha8"
   #:return-type
   void
   #:arg-types
   (list '* '* '* '* '*)))

(define ImFontAtlas_GetMouseCursorTexData
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetMouseCursorTexData"
   #:return-type
   bool
   #:arg-types
   (list '* int '* '* -1 -1)))

(define ImFontAtlas_GetGlyphRangesVietnamese
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetGlyphRangesVietnamese"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFontAtlas_GetGlyphRangesThai
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetGlyphRangesThai"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFontAtlas_GetGlyphRangesKorean
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetGlyphRangesKorean"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFontAtlas_GetGlyphRangesJapanese
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetGlyphRangesJapanese"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFontAtlas_GetGlyphRangesGreek
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetGlyphRangesGreek"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFontAtlas_GetGlyphRangesDefault
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetGlyphRangesDefault"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFontAtlas_GetGlyphRangesCyrillic
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetGlyphRangesCyrillic"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFontAtlas_GetGlyphRangesChineseFull
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetGlyphRangesChineseFull"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImFontAtlas_GetCustomRectByIndex
  (foreign-library-function
   cimgui
   "ImFontAtlas_GetCustomRectByIndex"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define ImFontAtlas_ClearTexData
  (foreign-library-function
   cimgui
   "ImFontAtlas_ClearTexData"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFontAtlas_ClearInputData
  (foreign-library-function
   cimgui
   "ImFontAtlas_ClearInputData"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFontAtlas_ClearFonts
  (foreign-library-function
   cimgui
   "ImFontAtlas_ClearFonts"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFontAtlas_Clear
  (foreign-library-function
   cimgui
   "ImFontAtlas_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFontAtlas_CalcCustomRectUV
  (foreign-library-function
   cimgui
   "ImFontAtlas_CalcCustomRectUV"
   #:return-type
   void
   #:arg-types
   (list '* '* '* '*)))

(define ImFontAtlas_Build
  (foreign-library-function
   cimgui
   "ImFontAtlas_Build"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImFontAtlas_AddFontFromMemoryTTF
  (foreign-library-function
   cimgui
   "ImFontAtlas_AddFontFromMemoryTTF"
   #:return-type
   '*
   #:arg-types
   (list '* '* int float '* '*)))

(define ImFontAtlas_AddFontFromMemoryCompressedTTF
  (foreign-library-function
   cimgui
   "ImFontAtlas_AddFontFromMemoryCompressedTTF"
   #:return-type
   '*
   #:arg-types
   (list '* '* int float '* '*)))

(define ImFontAtlas_AddFontFromMemoryCompressedBase85TTF
  (foreign-library-function
   cimgui
   "ImFontAtlas_AddFontFromMemoryCompressedBase85TTF"
   #:return-type
   '*
   #:arg-types
   (list '* '* float '* '*)))

(define ImFontAtlas_AddFontFromFileTTF
  (foreign-library-function
   cimgui
   "ImFontAtlas_AddFontFromFileTTF"
   #:return-type
   '*
   #:arg-types
   (list '* '* float '* '*)))

(define ImFontAtlas_AddFontDefault
  (foreign-library-function
   cimgui
   "ImFontAtlas_AddFontDefault"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define ImFontAtlas_AddFont
  (foreign-library-function
   cimgui
   "ImFontAtlas_AddFont"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define ImFontAtlas_AddCustomRectRegular
  (foreign-library-function
   cimgui
   "ImFontAtlas_AddCustomRectRegular"
   #:return-type
   int
   #:arg-types
   (list '* int int)))

(define ImFontAtlas_AddCustomRectFontGlyph
  (foreign-library-function
   cimgui
   "ImFontAtlas_AddCustomRectFontGlyph"
   #:return-type
   int
   #:arg-types
   (list '* '* unsigned-short int int float ImVec2)))

(define ImFontAtlasCustomRect_destroy
  (foreign-library-function
   cimgui
   "ImFontAtlasCustomRect_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImFontAtlasCustomRect_IsPacked
  (foreign-library-function
   cimgui
   "ImFontAtlasCustomRect_IsPacked"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImFontAtlasCustomRect_ImFontAtlasCustomRect
  (foreign-library-function
   cimgui
   "ImFontAtlasCustomRect_ImFontAtlasCustomRect"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImDrawList_destroy
  (foreign-library-function
   cimgui
   "ImDrawList_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList__TryMergeDrawCmds
  (foreign-library-function
   cimgui
   "ImDrawList__TryMergeDrawCmds"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList__SetTextureID
  (foreign-library-function
   cimgui
   "ImDrawList__SetTextureID"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImDrawList__ResetForNewFrame
  (foreign-library-function
   cimgui
   "ImDrawList__ResetForNewFrame"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList__PopUnusedDrawCmd
  (foreign-library-function
   cimgui
   "ImDrawList__PopUnusedDrawCmd"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList__PathArcToN
  (foreign-library-function
   cimgui
   "ImDrawList__PathArcToN"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float float float int)))

(define ImDrawList__PathArcToFastEx
  (foreign-library-function
   cimgui
   "ImDrawList__PathArcToFastEx"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float int int int)))

(define ImDrawList__OnChangedVtxOffset
  (foreign-library-function
   cimgui
   "ImDrawList__OnChangedVtxOffset"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList__OnChangedTextureID
  (foreign-library-function
   cimgui
   "ImDrawList__OnChangedTextureID"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList__OnChangedClipRect
  (foreign-library-function
   cimgui
   "ImDrawList__OnChangedClipRect"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList__ClearFreeMemory
  (foreign-library-function
   cimgui
   "ImDrawList__ClearFreeMemory"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList__CalcCircleAutoSegmentCount
  (foreign-library-function
   cimgui
   "ImDrawList__CalcCircleAutoSegmentCount"
   #:return-type
   int
   #:arg-types
   (list '* float)))

(define ImDrawList_PushTextureID
  (foreign-library-function
   cimgui
   "ImDrawList_PushTextureID"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImDrawList_PushClipRectFullScreen
  (foreign-library-function
   cimgui
   "ImDrawList_PushClipRectFullScreen"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList_PushClipRect
  (foreign-library-function
   cimgui
   "ImDrawList_PushClipRect"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 bool)))

(define ImDrawList_PrimWriteVtx
  (foreign-library-function
   cimgui
   "ImDrawList_PrimWriteVtx"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int)))

(define ImDrawList_PrimWriteIdx
  (foreign-library-function
   cimgui
   "ImDrawList_PrimWriteIdx"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-short)))

(define ImDrawList_PrimVtx
  (foreign-library-function
   cimgui
   "ImDrawList_PrimVtx"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int)))

(define ImDrawList_PrimUnreserve
  (foreign-library-function
   cimgui
   "ImDrawList_PrimUnreserve"
   #:return-type
   void
   #:arg-types
   (list '* int int)))

(define ImDrawList_PrimReserve
  (foreign-library-function
   cimgui
   "ImDrawList_PrimReserve"
   #:return-type
   void
   #:arg-types
   (list '* int int)))

(define ImDrawList_PrimRectUV
  (foreign-library-function
   cimgui
   "ImDrawList_PrimRectUV"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 ImVec2 unsigned-int)))

(define ImDrawList_PrimRect
  (foreign-library-function
   cimgui
   "ImDrawList_PrimRect"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int)))

(define ImDrawList_PrimQuadUV
  (foreign-library-function
   cimgui
   "ImDrawList_PrimQuadUV"
   #:return-type
   void
   #:arg-types
   (list '*
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         unsigned-int)))

(define ImDrawList_PopTextureID
  (foreign-library-function
   cimgui
   "ImDrawList_PopTextureID"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList_PopClipRect
  (foreign-library-function
   cimgui
   "ImDrawList_PopClipRect"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList_PathStroke
  (foreign-library-function
   cimgui
   "ImDrawList_PathStroke"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int int float)))

(define ImDrawList_PathRect
  (foreign-library-function
   cimgui
   "ImDrawList_PathRect"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 float int)))

(define ImDrawList_PathLineToMergeDuplicate
  (foreign-library-function
   cimgui
   "ImDrawList_PathLineToMergeDuplicate"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2)))

(define ImDrawList_PathLineTo
  (foreign-library-function
   cimgui
   "ImDrawList_PathLineTo"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2)))

(define ImDrawList_PathFillConvex
  (foreign-library-function
   cimgui
   "ImDrawList_PathFillConvex"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int)))

(define ImDrawList_PathFillConcave
  (foreign-library-function
   cimgui
   "ImDrawList_PathFillConcave"
   #:return-type
   void
   #:arg-types
   (list '* unsigned-int)))

(define ImDrawList_PathEllipticalArcTo
  (foreign-library-function
   cimgui
   "ImDrawList_PathEllipticalArcTo"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 float float float int)))

(define ImDrawList_PathClear
  (foreign-library-function
   cimgui
   "ImDrawList_PathClear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList_PathBezierQuadraticCurveTo
  (foreign-library-function
   cimgui
   "ImDrawList_PathBezierQuadraticCurveTo"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 int)))

(define ImDrawList_PathBezierCubicCurveTo
  (foreign-library-function
   cimgui
   "ImDrawList_PathBezierCubicCurveTo"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 int)))

(define ImDrawList_PathArcToFast
  (foreign-library-function
   cimgui
   "ImDrawList_PathArcToFast"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float int int)))

(define ImDrawList_PathArcTo
  (foreign-library-function
   cimgui
   "ImDrawList_PathArcTo"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float float float int)))

(define ImDrawList_ImDrawList
  (foreign-library-function
   cimgui
   "ImDrawList_ImDrawList"
   #:return-type
   0
   #:arg-types
   (list '*)))

(define ImDrawList_GetClipRectMin
  (foreign-library-function
   cimgui
   "ImDrawList_GetClipRectMin"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImDrawList_GetClipRectMax
  (foreign-library-function
   cimgui
   "ImDrawList_GetClipRectMax"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImDrawList_CloneOutput
  (foreign-library-function
   cimgui
   "ImDrawList_CloneOutput"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImDrawList_ChannelsSplit
  (foreign-library-function
   cimgui
   "ImDrawList_ChannelsSplit"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImDrawList_ChannelsSetCurrent
  (foreign-library-function
   cimgui
   "ImDrawList_ChannelsSetCurrent"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImDrawList_ChannelsMerge
  (foreign-library-function
   cimgui
   "ImDrawList_ChannelsMerge"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList_AddTriangleFilled
  (foreign-library-function
   cimgui
   "ImDrawList_AddTriangleFilled"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 unsigned-int)))

(define ImDrawList_AddTriangle
  (foreign-library-function
   cimgui
   "ImDrawList_AddTriangle"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 unsigned-int float)))

(define ImDrawList_AddText
  (foreign-library-function
   cimgui
   "ImDrawList_AddText"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 unsigned-int '* '*)))

(define ImDrawList_AddRectFilledMultiColor
  (foreign-library-function
   cimgui
   "ImDrawList_AddRectFilledMultiColor"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int unsigned-int unsigned-int unsigned-int)))

(define ImDrawList_AddRectFilled
  (foreign-library-function
   cimgui
   "ImDrawList_AddRectFilled"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int float int)))

(define ImDrawList_AddRect
  (foreign-library-function
   cimgui
   "ImDrawList_AddRect"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int float int float)))

(define ImDrawList_AddQuadFilled
  (foreign-library-function
   cimgui
   "ImDrawList_AddQuadFilled"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 ImVec2 unsigned-int)))

(define ImDrawList_AddQuad
  (foreign-library-function
   cimgui
   "ImDrawList_AddQuad"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 ImVec2 unsigned-int float)))

(define ImDrawList_AddPolyline
  (foreign-library-function
   cimgui
   "ImDrawList_AddPolyline"
   #:return-type
   void
   #:arg-types
   (list '* '* int unsigned-int int float)))

(define ImDrawList_AddNgonFilled
  (foreign-library-function
   cimgui
   "ImDrawList_AddNgonFilled"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float unsigned-int int)))

(define ImDrawList_AddNgon
  (foreign-library-function
   cimgui
   "ImDrawList_AddNgon"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float unsigned-int int float)))

(define ImDrawList_AddLine
  (foreign-library-function
   cimgui
   "ImDrawList_AddLine"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int float)))

(define ImDrawList_AddImageRounded
  (foreign-library-function
   cimgui
   "ImDrawList_AddImageRounded"
   #:return-type
   void
   #:arg-types
   (list '* '* ImVec2 ImVec2 ImVec2 ImVec2 unsigned-int float int)))

(define ImDrawList_AddImageQuad
  (foreign-library-function
   cimgui
   "ImDrawList_AddImageQuad"
   #:return-type
   void
   #:arg-types
   (list '*
         '*
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         ImVec2
         unsigned-int)))

(define ImDrawList_AddImage
  (foreign-library-function
   cimgui
   "ImDrawList_AddImage"
   #:return-type
   void
   #:arg-types
   (list '* '* ImVec2 ImVec2 ImVec2 ImVec2 unsigned-int)))

(define ImDrawList_AddEllipseFilled
  (foreign-library-function
   cimgui
   "ImDrawList_AddEllipseFilled"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int float int)))

(define ImDrawList_AddEllipse
  (foreign-library-function
   cimgui
   "ImDrawList_AddEllipse"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 unsigned-int float int float)))

(define ImDrawList_AddDrawCmd
  (foreign-library-function
   cimgui
   "ImDrawList_AddDrawCmd"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawList_AddConvexPolyFilled
  (foreign-library-function
   cimgui
   "ImDrawList_AddConvexPolyFilled"
   #:return-type
   void
   #:arg-types
   (list '* '* int unsigned-int)))

(define ImDrawList_AddConcavePolyFilled
  (foreign-library-function
   cimgui
   "ImDrawList_AddConcavePolyFilled"
   #:return-type
   void
   #:arg-types
   (list '* '* int unsigned-int)))

(define ImDrawList_AddCircleFilled
  (foreign-library-function
   cimgui
   "ImDrawList_AddCircleFilled"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float unsigned-int int)))

(define ImDrawList_AddCircle
  (foreign-library-function
   cimgui
   "ImDrawList_AddCircle"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 float unsigned-int int float)))

(define ImDrawList_AddCallback
  (foreign-library-function
   cimgui
   "ImDrawList_AddCallback"
   #:return-type
   void
   #:arg-types
   (list '* '* '*)))

(define ImDrawList_AddBezierQuadratic
  (foreign-library-function
   cimgui
   "ImDrawList_AddBezierQuadratic"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 unsigned-int float int)))

(define ImDrawList_AddBezierCubic
  (foreign-library-function
   cimgui
   "ImDrawList_AddBezierCubic"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2 ImVec2 ImVec2 ImVec2 unsigned-int float int)))

(define ImDrawListSplitter_destroy
  (foreign-library-function
   cimgui
   "ImDrawListSplitter_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawListSplitter_Split
  (foreign-library-function
   cimgui
   "ImDrawListSplitter_Split"
   #:return-type
   void
   #:arg-types
   (list '* '* int)))

(define ImDrawListSplitter_SetCurrentChannel
  (foreign-library-function
   cimgui
   "ImDrawListSplitter_SetCurrentChannel"
   #:return-type
   void
   #:arg-types
   (list '* '* int)))

(define ImDrawListSplitter_Merge
  (foreign-library-function
   cimgui
   "ImDrawListSplitter_Merge"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImDrawListSplitter_ImDrawListSplitter
  (foreign-library-function
   cimgui
   "ImDrawListSplitter_ImDrawListSplitter"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImDrawListSplitter_ClearFreeMemory
  (foreign-library-function
   cimgui
   "ImDrawListSplitter_ClearFreeMemory"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawListSplitter_Clear
  (foreign-library-function
   cimgui
   "ImDrawListSplitter_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawListSharedData_destroy
  (foreign-library-function
   cimgui
   "ImDrawListSharedData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawListSharedData_SetCircleTessellationMaxError
  (foreign-library-function
   cimgui
   "ImDrawListSharedData_SetCircleTessellationMaxError"
   #:return-type
   void
   #:arg-types
   (list '* float)))

(define ImDrawListSharedData_ImDrawListSharedData
  (foreign-library-function
   cimgui
   "ImDrawListSharedData_ImDrawListSharedData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImDrawData_destroy
  (foreign-library-function
   cimgui
   "ImDrawData_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawData_ScaleClipRects
  (foreign-library-function
   cimgui
   "ImDrawData_ScaleClipRects"
   #:return-type
   void
   #:arg-types
   (list '* ImVec2)))

(define ImDrawData_ImDrawData
  (foreign-library-function
   cimgui
   "ImDrawData_ImDrawData"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImDrawData_DeIndexAllBuffers
  (foreign-library-function
   cimgui
   "ImDrawData_DeIndexAllBuffers"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawData_Clear
  (foreign-library-function
   cimgui
   "ImDrawData_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawData_AddDrawList
  (foreign-library-function
   cimgui
   "ImDrawData_AddDrawList"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImDrawDataBuilder_destroy
  (foreign-library-function
   cimgui
   "ImDrawDataBuilder_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawDataBuilder_ImDrawDataBuilder
  (foreign-library-function
   cimgui
   "ImDrawDataBuilder_ImDrawDataBuilder"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImDrawCmd_destroy
  (foreign-library-function
   cimgui
   "ImDrawCmd_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImDrawCmd_ImDrawCmd
  (foreign-library-function
   cimgui
   "ImDrawCmd_ImDrawCmd"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImDrawCmd_GetTexID
  (foreign-library-function
   cimgui
   "ImDrawCmd_GetTexID"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImColor_destroy
  (foreign-library-function
   cimgui
   "ImColor_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImColor_SetHSV
  (foreign-library-function
   cimgui
   "ImColor_SetHSV"
   #:return-type
   void
   #:arg-types
   (list '* float float float float)))

(define ImColor_ImColor
  (foreign-library-function
   cimgui
   "ImColor_ImColor"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImColor_HSV
  (foreign-library-function
   cimgui
   "ImColor_HSV"
   #:return-type
   void
   #:arg-types
   (list '* float float float float)))

(define ImChunkStream_swap
  (foreign-library-function
   cimgui
   "ImChunkStream_swap"
   #:return-type
   void
   #:arg-types
   (list '* '*)))

(define ImChunkStream_size
  (foreign-library-function
   cimgui
   "ImChunkStream_size"
   #:return-type
   int
   #:arg-types
   (list '*)))

(define ImChunkStream_ptr_from_offset
  (foreign-library-function
   cimgui
   "ImChunkStream_ptr_from_offset"
   #:return-type
   '*
   #:arg-types
   (list '* int)))

(define ImChunkStream_offset_from_ptr
  (foreign-library-function
   cimgui
   "ImChunkStream_offset_from_ptr"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define ImChunkStream_next_chunk
  (foreign-library-function
   cimgui
   "ImChunkStream_next_chunk"
   #:return-type
   '*
   #:arg-types
   (list '* '*)))

(define ImChunkStream_end
  (foreign-library-function
   cimgui
   "ImChunkStream_end"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImChunkStream_empty
  (foreign-library-function
   cimgui
   "ImChunkStream_empty"
   #:return-type
   bool
   #:arg-types
   (list '*)))

(define ImChunkStream_clear
  (foreign-library-function
   cimgui
   "ImChunkStream_clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImChunkStream_chunk_size
  (foreign-library-function
   cimgui
   "ImChunkStream_chunk_size"
   #:return-type
   int
   #:arg-types
   (list '* '*)))

(define ImChunkStream_begin
  (foreign-library-function
   cimgui
   "ImChunkStream_begin"
   #:return-type
   '*
   #:arg-types
   (list '*)))

(define ImChunkStream_alloc_chunk
  (foreign-library-function
   cimgui
   "ImChunkStream_alloc_chunk"
   #:return-type
   '*
   #:arg-types
   (list '* size_t)))

(define ImBitVector_TestBit
  (foreign-library-function
   cimgui
   "ImBitVector_TestBit"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define ImBitVector_SetBit
  (foreign-library-function
   cimgui
   "ImBitVector_SetBit"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImBitVector_Create
  (foreign-library-function
   cimgui
   "ImBitVector_Create"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImBitVector_ClearBit
  (foreign-library-function
   cimgui
   "ImBitVector_ClearBit"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImBitVector_Clear
  (foreign-library-function
   cimgui
   "ImBitVector_Clear"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImBitArray_destroy
  (foreign-library-function
   cimgui
   "ImBitArray_destroy"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImBitArray_TestBit
  (foreign-library-function
   cimgui
   "ImBitArray_TestBit"
   #:return-type
   bool
   #:arg-types
   (list '* int)))

(define ImBitArray_SetBitRange
  (foreign-library-function
   cimgui
   "ImBitArray_SetBitRange"
   #:return-type
   void
   #:arg-types
   (list '* int int)))

(define ImBitArray_SetBit
  (foreign-library-function
   cimgui
   "ImBitArray_SetBit"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImBitArray_SetAllBits
  (foreign-library-function
   cimgui
   "ImBitArray_SetAllBits"
   #:return-type
   void
   #:arg-types
   (list '*)))

(define ImBitArray_ImBitArray
  (foreign-library-function
   cimgui
   "ImBitArray_ImBitArray"
   #:return-type
   0
   #:arg-types
   (list)))

(define ImBitArray_ClearBit
  (foreign-library-function
   cimgui
   "ImBitArray_ClearBit"
   #:return-type
   void
   #:arg-types
   (list '* int)))

(define ImBitArray_ClearAllBits
  (foreign-library-function
   cimgui
   "ImBitArray_ClearAllBits"
   #:return-type
   void
   #:arg-types
   (list '*)))

