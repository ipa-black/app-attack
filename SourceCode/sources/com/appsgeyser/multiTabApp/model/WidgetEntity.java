package com.appsgeyser.multiTabApp.model;

import android.net.Uri;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.configuration.IncludeScriptConfigEntity;
import com.explorestack.iab.vast.VastError;
import com.w_19998775.R;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class WidgetEntity implements Serializable {
    private int _height;
    private String _id;
    private String _injectJS;
    private ArrayList<IncludeScriptConfigEntity> _injectScripts;
    private String _link;
    private LoadingCurtainType _loadingCurtainType;
    private String _name;
    private boolean _showAsTab;
    private String _tabIcon;
    private String _tabId;
    private String _tabName;
    private String _tabType;
    private int _updateTime;
    private String _userAgent;
    private int _width;

    /* loaded from: classes2.dex */
    public enum DefaultWidgetType {
        PAUSED
    }

    /* loaded from: classes2.dex */
    public enum LoadingCurtainType {
        NONE,
        DEFAULT,
        BANNER,
        CUSTOM
    }

    public boolean isShowAsTab() {
        return this._showAsTab;
    }

    public void setShowAsTab(boolean z) {
        this._showAsTab = z;
    }

    public WidgetEntity() {
        this._width = 0;
        this._height = 0;
        this._updateTime = 0;
        this._showAsTab = true;
    }

    public WidgetEntity(WidgetEntity widgetEntity) {
        this._width = 0;
        this._height = 0;
        this._updateTime = 0;
        this._showAsTab = true;
        this._id = widgetEntity.getId();
        this._name = widgetEntity.getName();
        this._link = widgetEntity.getLink();
        this._width = widgetEntity.getWidth();
        this._height = widgetEntity.getHeight();
        this._updateTime = widgetEntity.getUpdateTime();
        this._tabName = widgetEntity.getTabName();
        this._tabIcon = widgetEntity.getTabIcon();
        this._injectJS = widgetEntity.getInjectJS();
        this._loadingCurtainType = widgetEntity.getLoadingCurtainType();
        this._userAgent = widgetEntity.getUserAgent();
        this._showAsTab = widgetEntity.isShowAsTab();
    }

    public static WidgetEntity newInstance(WidgetEntity widgetEntity) {
        WidgetEntity widgetEntity2 = new WidgetEntity();
        widgetEntity2._id = widgetEntity.getId();
        widgetEntity2._name = widgetEntity.getName();
        widgetEntity2._link = widgetEntity.getLink();
        widgetEntity2._width = widgetEntity.getWidth();
        widgetEntity2._height = widgetEntity.getHeight();
        widgetEntity2._updateTime = widgetEntity.getUpdateTime();
        widgetEntity2._tabName = widgetEntity.getTabName();
        widgetEntity2._tabIcon = widgetEntity.getTabIcon();
        widgetEntity2._injectJS = widgetEntity.getInjectJS();
        widgetEntity2._loadingCurtainType = widgetEntity.getLoadingCurtainType();
        widgetEntity2._userAgent = widgetEntity.getUserAgent();
        return widgetEntity2;
    }

    /* renamed from: com.appsgeyser.multiTabApp.model.WidgetEntity$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$appsgeyser$multiTabApp$model$WidgetEntity$DefaultWidgetType;

        static {
            int[] iArr = new int[DefaultWidgetType.values().length];
            $SwitchMap$com$appsgeyser$multiTabApp$model$WidgetEntity$DefaultWidgetType = iArr;
            try {
                iArr[DefaultWidgetType.PAUSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static WidgetEntity createDefaultWidget(DefaultWidgetType defaultWidgetType) {
        WidgetEntity widgetEntity = new WidgetEntity();
        if (AnonymousClass1.$SwitchMap$com$appsgeyser$multiTabApp$model$WidgetEntity$DefaultWidgetType[defaultWidgetType.ordinal()] != 1) {
            return null;
        }
        widgetEntity._id = "pausedwidget_0";
        widgetEntity._name = "PausedWidget";
        widgetEntity._link = Factory.getInstance().getMainNavigationActivity().getResources().getString(R.string.pausedContentUrl) + Factory.getInstance().getMainNavigationActivity().getConfig().getWidgetName();
        widgetEntity._width = VastError.ERROR_CODE_GENERAL_WRAPPER;
        widgetEntity._height = VastError.ERROR_CODE_GENERAL_WRAPPER;
        widgetEntity._updateTime = 0;
        widgetEntity._tabName = "";
        widgetEntity._tabIcon = "";
        widgetEntity._injectJS = "";
        widgetEntity._loadingCurtainType = LoadingCurtainType.NONE;
        widgetEntity._userAgent = "";
        widgetEntity._tabId = "-1";
        return widgetEntity;
    }

    public void addScript(IncludeScriptConfigEntity includeScriptConfigEntity) {
        if (this._injectScripts == null) {
            this._injectScripts = new ArrayList<>();
        }
        this._injectScripts.add(includeScriptConfigEntity);
    }

    public String getId() {
        return this._id;
    }

    public void setId(String str) {
        this._id = str;
    }

    public String getName() {
        return this._name;
    }

    public void setName(String str) {
        this._name = str;
    }

    public String getLink() {
        return this._link;
    }

    public void setLink(String str) {
        this._link = str;
    }

    public String getHostFromLink() {
        return Uri.parse(this._link).getHost();
    }

    public String getPathFromLink() {
        return Uri.parse(this._link).getPath();
    }

    public int getWidth() {
        return this._width;
    }

    public void setWidth(int i) {
        this._width = i;
    }

    public int getHeight() {
        return this._height;
    }

    public void setHeight(int i) {
        this._height = i;
    }

    public int getUpdateTime() {
        return this._updateTime;
    }

    public void setUpdateTime(int i) {
        this._updateTime = i;
    }

    public String getTabName() {
        return this._tabName;
    }

    public void setTabName(String str) {
        this._tabName = str;
    }

    public String getTabIcon() {
        return this._tabIcon;
    }

    public void setTabIcon(String str) {
        this._tabIcon = str;
    }

    public String getInjectJS() {
        return this._injectJS;
    }

    public ArrayList<IncludeScriptConfigEntity> getInjectScripts() {
        return this._injectScripts;
    }

    public void setInjectJS(String str) {
        this._injectJS = str;
    }

    public LoadingCurtainType getLoadingCurtainType() {
        return this._loadingCurtainType;
    }

    public void setLoadingCurtainType(LoadingCurtainType loadingCurtainType) {
        this._loadingCurtainType = loadingCurtainType;
    }

    public String getUserAgent() {
        return this._userAgent;
    }

    public void setUserAgent(String str) {
        this._userAgent = str;
    }

    public void setTabId(String str) {
        this._tabId = str;
    }

    public String getTabId() {
        return this._tabId;
    }

    public String getTabType() {
        return this._tabType;
    }

    public void setTabType(String str) {
        this._tabType = str;
    }
}
