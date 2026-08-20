package com.appsgeyser.multiTabApp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.appsgeyser.multiTabApp.controllers.INavigationController;
import com.appsgeyser.multiTabApp.controllers.ITabContentController;
import com.appsgeyser.multiTabApp.controllers.WebContentController;
import com.appsgeyser.multiTabApp.controllers.WidgetsController;
import com.appsgeyser.multiTabApp.model.WidgetEntity;
import com.appsgeyser.multiTabApp.storage.BookmarksManager;
import com.appsgeyser.multiTabApp.ui.navigationwidget.INavigationWidget;
import com.appsgeyser.multiTabApp.ui.views.TabContent;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class Factory {
    private static Factory _instance;
    private MainNavigationActivity _activity;
    private BookmarksManager _homePageManager;
    private INavigationController _navigationController;
    private INavigationWidget _navigationWidget = null;
    private ITabContentController tccRes = null;
    private HashMap<String, BookmarksManager> bookmarkManagers = new HashMap<>();
    private WidgetsController _widgetsController = new WidgetsController();

    private Factory() {
    }

    public static Factory getInstance() {
        if (_instance == null) {
            _instance = new Factory();
        }
        return _instance;
    }

    public void destroy() {
        this._widgetsController = null;
        this._navigationController.destroy();
        this._navigationController = null;
        _instance = null;
    }

    public void Init(MainNavigationActivity mainNavigationActivity) {
        this._activity = mainNavigationActivity;
    }

    public void setNavigationWidget(INavigationWidget iNavigationWidget) {
        this._navigationWidget = iNavigationWidget;
    }

    public void setNavigationController(INavigationController iNavigationController) {
        this._navigationController = iNavigationController;
    }

    public INavigationWidget getNavigationWidget() {
        return this._navigationWidget;
    }

    public MainNavigationActivity getMainNavigationActivity() {
        return this._activity;
    }

    public WidgetsController getWidgetsController() {
        return this._widgetsController;
    }

    public void setWidgetsController(WidgetsController widgetsController) {
        this._widgetsController = widgetsController;
    }

    public INavigationController getTabsController() {
        return this._navigationController;
    }

    /* renamed from: com.appsgeyser.multiTabApp.Factory$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType;

        static {
            int[] iArr = new int[TabContent.TabType.values().length];
            $SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType = iArr;
            try {
                iArr[TabContent.TabType.WEB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType[TabContent.TabType.PDF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public View getTabContent(TabContent.TabType tabType, LayoutInflater layoutInflater, ViewGroup viewGroup) throws Exception {
        int i = AnonymousClass1.$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType[tabType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return layoutInflater.inflate(com.w_19998775.R.layout.pdf_content, viewGroup, false);
            }
            throw new Exception("Unknown Content Type");
        }
        return layoutInflater.inflate(com.w_19998775.R.layout.web_content, viewGroup, false);
    }

    public ITabContentController getTabContentController(WidgetEntity widgetEntity) {
        WebContentController webContentController = new WebContentController(widgetEntity);
        this.tccRes = webContentController;
        webContentController.setMainNavigationActivity(this._activity);
        return this.tccRes;
    }

    public ITabContentController getWebContentController() {
        return this.tccRes;
    }

    public BookmarksManager getHomePageManager() {
        if (this._homePageManager == null) {
            this._homePageManager = new BookmarksManager("Homepage", this._activity);
        }
        return this._homePageManager;
    }

    public BookmarksManager getBookmarkManager(String str) {
        if (!this.bookmarkManagers.containsKey(str)) {
            this.bookmarkManagers.put(str, new BookmarksManager(str, this._activity));
        }
        return this.bookmarkManagers.get(str);
    }
}
