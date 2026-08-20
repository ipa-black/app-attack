.class public Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLConfigurationHandler.java"


# static fields
.field private static final PROP_FILE:Ljava/lang/String; = "file"

.field private static final PROP_ICON:Ljava/lang/String; = "icon"

.field private static final PROP_IMAGE:Ljava/lang/String; = "image"

.field private static final PROP_NAME:Ljava/lang/String; = "name"

.field private static final PROP_PATTERN:Ljava/lang/String; = "pattern"

.field private static final PROP_REGEXP:Ljava/lang/String; = "regexp"

.field private static final PROP_TITLE:Ljava/lang/String; = "title"

.field private static final PROP_URL:Ljava/lang/String; = "url"

.field private static final SHARE_EXTRA_LINK:Ljava/lang/String; = "shareExtraLink"

.field private static final TAG_ACCEPT_COOKIE:Ljava/lang/String; = "acceptCookie"

.field private static final TAG_AFFILIATE:Ljava/lang/String; = "affiliate"

.field private static final TAG_BANNER_POSITION:Ljava/lang/String; = "bannerPosition"

.field private static final TAG_BLOCK_APP_FROM_SLEEP:Ljava/lang/String; = "preventFromSleep"

.field private static final TAG_BUTTON:Ljava/lang/String; = "button"

.field private static final TAG_CONTENT:Ljava/lang/String; = "content"

.field private static final TAG_CONTENT_HEIGHT:Ljava/lang/String; = "height"

.field private static final TAG_CONTENT_PROTECTION:Ljava/lang/String; = "contentProtection"

.field private static final TAG_CONTENT_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG_DOWNLOAD_ACTION:Ljava/lang/String; = "downloadAction"

.field private static final TAG_ENABLE_FULLSCREEN_BANNER:Ljava/lang/String; = "enableFullScreenBanner"

.field private static final TAG_ENABLE_HIDE_TAB_BAR:Ljava/lang/String; = "enableHideTabBar"

.field private static final TAG_ENABLE_HIDE_URL_BAR:Ljava/lang/String; = "enableHideUrlBar"

.field private static final TAG_ENABLE_ON_EXIT_FULLSCREEN_BANNER:Ljava/lang/String; = "enableOnExitFullScreenBanner"

.field private static final TAG_ENABLE_URL_BAR:Ljava/lang/String; = "enableUrlBar"

.field private static final TAG_FULL_SCREEN_MODE:Ljava/lang/String; = "fullScreenMode"

.field private static final TAG_GET_STRING:Ljava/lang/String; = "getString"

.field private static final TAG_ID:Ljava/lang/String; = "id"

.field private static final TAG_INJECT_JS:Ljava/lang/String; = "injectJS"

.field private static final TAG_IS_ABOUT_SCREEN_ENABLED:Ljava/lang/String; = "enableAboutScreen"

.field private static final TAG_IS_REDIRECT_ENABLED:Ljava/lang/String; = "enableRedirection"

.field private static final TAG_LINK:Ljava/lang/String; = "link"

.field private static final TAG_LOADING_CURTAIN:Ljava/lang/String; = "loadingCurtain"

.field private static final TAG_LOCATON_URL:Ljava/lang/String; = "locationUrl"

.field private static final TAG_LOGIN:Ljava/lang/String; = "login"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_PASSWORD:Ljava/lang/String; = "password"

.field private static final TAG_PUBLISHER_NAME:Ljava/lang/String; = "publisher"

.field private static final TAG_RATE_ITEM_VISIBILITY:Ljava/lang/String; = "rateItemVisibility"

.field private static final TAG_REGISTERED_URL:Ljava/lang/String; = "registeredUrl"

.field private static final TAG_SCRIPT:Ljava/lang/String; = "script"

.field private static final TAG_SHOW_ABOUT_MENU_ITEM:Ljava/lang/String; = "showAboutMenuItem"

.field private static final TAG_SHOW_AS_TAB:Ljava/lang/String; = "showAsTab"

.field private static final TAG_SHOW_DOWNLOADS_LIST:Ljava/lang/String; = "showDownloadList"

.field private static final TAG_SHOW_EXIT_MENU_ITEM:Ljava/lang/String; = "showExitMenuItem"

.field private static final TAG_SHOW_INAPPS_MENU_ITEM:Ljava/lang/String; = "showInAppsMenuItem"

.field private static final TAG_SHOW_REFRESH_MENU_ITEM:Ljava/lang/String; = "showRefreshMenuItem"

.field private static final TAG_SHOW_SEARCH_NOTICE:Ljava/lang/String; = "showSearchNotice"

.field private static final TAG_SHOW_SETTINGS:Ljava/lang/String; = "showSettings"

.field private static final TAG_SHOW_SHARE_MENU_ITEM:Ljava/lang/String; = "showShareMenuItem"

.field private static final TAG_SHOW_STARTUP_CONFIRMATION_DIALOG:Ljava/lang/String; = "showStartupConfirmationDialog"

.field private static final TAG_SPLASH_SCREEN:Ljava/lang/String; = "splashScreen"

.field private static final TAG_TABS_POSITION:Ljava/lang/String; = "tabsPosition"

.field private static final TAG_TAB_ICON:Ljava/lang/String; = "tabIcon"

.field private static final TAG_TAB_ID:Ljava/lang/String; = "tabId"

.field private static final TAG_TAB_NAME:Ljava/lang/String; = "tabName"

.field private static final TAG_TAB_TYPE:Ljava/lang/String; = "tabType"

.field private static final TAG_THEME:Ljava/lang/String; = "theme"

.field private static final TAG_UPDATE:Ljava/lang/String; = "update"

.field private static final TAG_URL_BAR_MENU_ITEMS:Ljava/lang/String; = "urlBarMenuItems"

.field private static final TAG_URL_BAR_STYLE:Ljava/lang/String; = "urlBarStyle"

.field private static final TAG_USAGE:Ljava/lang/String; = "usage"

.field private static final TAG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field private static final TAG_USER_INTERFACE:Ljava/lang/String; = "userInterface"

.field private static final TAG_WIDGET_NAME:Ljava/lang/String; = "widgetName"


# instance fields
.field private _currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

.field private builder:Ljava/lang/StringBuilder;

.field private current2ndParentTag:Ljava/lang/String;

.field private currentParentTag:Ljava/lang/String;

.field private inInjectJsTag:Ljava/lang/Boolean;

.field private scriptTagsFound:Ljava/lang/Boolean;

.field private webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

.field private widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    .line 30
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 113
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    .line 114
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 122
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 123
    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    .line 125
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 205
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string p1, "fullScreenMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const-string v0, ""

    const/4 v1, 0x0

    .line 257
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz p3, :cond_0

    .line 208
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    goto/16 :goto_6

    .line 209
    :cond_0
    const-string p3, "registeredUrl"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "content"

    if-nez v3, :cond_54

    .line 210
    const-string v3, "usage"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    .line 211
    const-string v5, "locationUrl"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 212
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_54

    .line 213
    const-string v6, "contentProtection"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 214
    const-string v7, "affiliate"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_54

    const-string v8, "urlBarMenuItems"

    .line 215
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_5

    .line 223
    :cond_1
    iget-object v8, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v8, "custom"

    const-string v9, "id"

    const-string v10, "link"

    const-string v11, "true"

    if-eqz p1, :cond_17

    .line 224
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 225
    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 226
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 227
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setId(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 228
    :cond_2
    const-string p1, "name"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 229
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 230
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setName(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 231
    :cond_3
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 232
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 233
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setLink(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 234
    :cond_4
    const-string p1, "update"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 235
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 236
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 237
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setUpdateTime(I)V

    goto/16 :goto_6

    .line 239
    :cond_5
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setUpdateTime(I)V

    goto/16 :goto_6

    .line 240
    :cond_6
    const-string p1, "width"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 241
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 242
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setWidth(I)V

    goto/16 :goto_6

    .line 243
    :cond_7
    const-string p1, "height"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 244
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 245
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 245
    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setHeight(I)V

    goto/16 :goto_6

    .line 247
    :cond_8
    const-string p1, "tabName"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 248
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 249
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setTabName(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 250
    :cond_9
    const-string p1, "tabIcon"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 251
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 252
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setTabIcon(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 253
    :cond_a
    const-string p1, "injectJS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 254
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_b

    .line 255
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setInjectJS(Ljava/lang/String;)V

    .line 257
    :cond_b
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    .line 258
    iput-object v2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    goto/16 :goto_6

    .line 259
    :cond_c
    const-string p1, "loadingCurtain"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 260
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 261
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    .line 263
    const-string p3, "none"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_d

    .line 264
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->NONE:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    goto :goto_0

    .line 265
    :cond_d
    const-string p3, "default"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_e

    .line 266
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->DEFAULT:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    goto :goto_0

    .line 267
    :cond_e
    const-string p3, "banner"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_f

    .line 268
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->BANNER:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    goto :goto_0

    .line 269
    :cond_f
    invoke-virtual {p1, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_10

    .line 270
    sget-object p2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;->CUSTOM:Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;

    .line 272
    :cond_10
    :goto_0
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setLoadingCurtainType(Lcom/appsgeyser/multiTabApp/model/WidgetEntity$LoadingCurtainType;)V

    goto/16 :goto_6

    .line 274
    :cond_11
    const-string p1, "tabType"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 275
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 276
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 277
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    .line 278
    const-string p3, "web"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_12

    .line 279
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->WEB:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    goto :goto_1

    .line 280
    :cond_12
    const-string p3, "pdf"

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_13

    .line 281
    sget-object p2, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->PDF:Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;

    .line 282
    :cond_13
    :goto_1
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p2}, Lcom/appsgeyser/multiTabApp/ui/views/TabContent$TabType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setTabType(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 284
    :cond_14
    const-string p1, "userAgent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 285
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz p1, :cond_55

    .line 286
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setUserAgent(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 287
    :cond_15
    const-string p1, "tabId"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 288
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setTabId(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 289
    :cond_16
    const-string p1, "showAsTab"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 290
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->setShowAsTab(Z)V

    goto/16 :goto_6

    .line 293
    :cond_17
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 294
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 295
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setRegisteredUrl(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 297
    :cond_18
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 298
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 299
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setAddUsageUrl(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 301
    :cond_19
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 302
    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 303
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setLocationUrl(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 305
    :cond_1a
    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 306
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\n"

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "\t"

    .line 308
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 307
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 306
    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationId(I)V

    goto/16 :goto_6

    .line 309
    :cond_1b
    const-string p1, "widgetName"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 310
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setWidgetName(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 311
    :cond_1c
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 312
    const-string p1, "login"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 313
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setHttpAccessLogin(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 314
    :cond_1d
    const-string p1, "password"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 315
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setHttpAccessPassword(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 317
    :cond_1e
    const-string p1, "userInterface"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 318
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 319
    const-string p2, "standard"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 320
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationMode(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V

    goto/16 :goto_6

    .line 321
    :cond_1f
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 322
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationMode(Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;)V

    goto/16 :goto_6

    .line 324
    :cond_20
    const-string p1, "rateItemVisibility"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_22

    .line 325
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 326
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 327
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setRateItemVisibility(Z)V

    goto/16 :goto_6

    .line 329
    :cond_21
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setRateItemVisibility(Z)V

    goto/16 :goto_6

    .line 331
    :cond_22
    const-string p1, "acceptCookie"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 332
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 334
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setAcceptCookie(Z)V

    goto/16 :goto_6

    .line 336
    :cond_23
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setAcceptCookie(Z)V

    goto/16 :goto_6

    .line 338
    :cond_24
    const-string p1, "preventFromSleep"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 339
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 341
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setPreventFromSleep(Z)V

    goto/16 :goto_6

    .line 343
    :cond_25
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setPreventFromSleep(Z)V

    goto/16 :goto_6

    .line 345
    :cond_26
    const-string p1, "showRefreshMenuItem"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 346
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 347
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 348
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowRefreshMenuItem(Z)V

    goto/16 :goto_6

    .line 350
    :cond_27
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowRefreshMenuItem(Z)V

    goto/16 :goto_6

    .line 352
    :cond_28
    const-string p1, "showShareMenuItem"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 353
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 355
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowShareMenuItem(Z)V

    goto/16 :goto_6

    .line 357
    :cond_29
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowShareMenuItem(Z)V

    goto/16 :goto_6

    .line 359
    :cond_2a
    const-string p1, "showDownloadList"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 360
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 362
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowDownloadList(Z)V

    goto/16 :goto_6

    .line 364
    :cond_2b
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowDownloadList(Z)V

    goto/16 :goto_6

    .line 366
    :cond_2c
    const-string p1, "showAboutMenuItem"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 367
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 369
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowAboutMenuItem(Z)V

    goto/16 :goto_6

    .line 371
    :cond_2d
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowAboutMenuItem(Z)V

    goto/16 :goto_6

    .line 373
    :cond_2e
    const-string p1, "showInAppsMenuItem"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 374
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 376
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowInAppMenuItem(Z)V

    goto/16 :goto_6

    .line 378
    :cond_2f
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowInAppMenuItem(Z)V

    goto/16 :goto_6

    .line 380
    :cond_30
    const-string p1, "showExitMenuItem"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 381
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 383
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowExitMenuItem(Z)V

    goto/16 :goto_6

    .line 385
    :cond_31
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowExitMenuItem(Z)V

    goto/16 :goto_6

    .line 387
    :cond_32
    const-string p1, "showSettings"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 388
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 389
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 390
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowSettings(Z)V

    goto/16 :goto_6

    .line 392
    :cond_33
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowSettings(Z)V

    goto/16 :goto_6

    .line 394
    :cond_34
    const-string p1, "shareExtraLink"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 395
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShareExtraLink(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 396
    :cond_35
    const-string p1, "enableFullScreenBanner"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 397
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setFullscreenBannerEnabled(Z)V

    goto/16 :goto_6

    .line 398
    :cond_36
    const-string p1, "enableOnExitFullScreenBanner"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 399
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setOnExitFullscreenBannerEnabled(Z)V

    goto/16 :goto_6

    .line 400
    :cond_37
    const-string p1, "showStartupConfirmationDialog"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 401
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowStartupConfirmationDialog(Z)V

    goto/16 :goto_6

    .line 402
    :cond_38
    const-string p1, "enableAboutScreen"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 403
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setIsAboutScreenEnabled(Z)V

    goto/16 :goto_6

    .line 404
    :cond_39
    const-string p1, "theme"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 405
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 406
    const-string p2, "ACTION_BAR"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 407
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;)V

    goto/16 :goto_6

    .line 408
    :cond_3a
    const-string p2, "NO_MENU"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 409
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->NO_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;)V

    goto/16 :goto_6

    .line 411
    :cond_3b
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setApplicationTheme(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;)V

    goto/16 :goto_6

    .line 413
    :cond_3c
    const-string p1, "enableUrlBar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 414
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    .line 415
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 416
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    goto :goto_2

    .line 417
    :cond_3d
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "on_external_urls"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 418
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;->ENABLED_ON_EXTERNAL_URLS:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;

    .line 420
    :cond_3e
    :goto_2
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setUrlOverlayState(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStates;)V

    goto/16 :goto_6

    .line 421
    :cond_3f
    const-string p1, "enableHideUrlBar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "false"

    if-eqz p1, :cond_41

    .line 422
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    .line 423
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 424
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    .line 426
    :cond_40
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setUrlBarHide(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;)V

    goto/16 :goto_6

    .line 427
    :cond_41
    const-string p1, "showSearchNotice"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 428
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 430
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowSearchNotice(Z)V

    goto/16 :goto_6

    .line 432
    :cond_42
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, v1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setShowSearchNotice(Z)V

    goto/16 :goto_6

    .line 434
    :cond_43
    const-string p1, "urlBarStyle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 435
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;->BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    .line 436
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "top"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 437
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;->TOP:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;

    .line 439
    :cond_44
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setUrlBarStyle(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarStyles;)V

    goto/16 :goto_6

    .line 440
    :cond_45
    const-string p1, "tabsPosition"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 441
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->TOP:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    .line 442
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bottom"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 443
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    goto :goto_3

    .line 444
    :cond_46
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "drawer"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 445
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->DRAWER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    goto :goto_3

    .line 447
    :cond_47
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bottom_menu"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_48

    .line 448
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    .line 450
    :cond_48
    :goto_3
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setTabsPosition(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;)V

    goto/16 :goto_6

    .line 451
    :cond_49
    const-string p1, "enableHideTabBar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 452
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;

    .line 453
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 454
    sget-object p1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;

    .line 456
    :cond_4a
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setTabsEnabledHide(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsEnabledHide;)V

    goto/16 :goto_6

    .line 457
    :cond_4b
    const-string p1, "publisher"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 458
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setPublisherName(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 459
    :cond_4c
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 460
    const-string p1, "getString"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 461
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setAffiliateString(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 463
    :cond_4d
    const-string p1, "enableRedirection"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 464
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 465
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->NO_REDIRECT:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setIsRedirectEnabled(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;)V

    goto :goto_6

    .line 466
    :cond_4e
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 467
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_ALL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setIsRedirectEnabled(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;)V

    goto :goto_6

    .line 469
    :cond_4f
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;->REDIRECT_EXTERNAL:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setIsRedirectEnabled(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$RedirectionTypes;)V

    goto :goto_6

    .line 472
    :cond_50
    const-string p1, "downloadAction"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 473
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 474
    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    .line 475
    const-string p3, "open"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_51

    .line 476
    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    goto :goto_4

    .line 477
    :cond_51
    const-string p3, "save"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_52

    .line 478
    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->SAVE:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    goto :goto_4

    .line 479
    :cond_52
    const-string p3, "dialog"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 480
    sget-object p2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    .line 482
    :cond_53
    :goto_4
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setDownloadAction(Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;)V

    goto :goto_6

    .line 217
    :cond_54
    :goto_5
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 218
    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 219
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->addWidget(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V

    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 486
    :cond_55
    :goto_6
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public getWebWidgetConfiguration()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    return-object v0
.end method

.method public getWidgetsController()Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->widgetsController:Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 131
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 141
    const-string p1, "fullScreenMode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 143
    :cond_0
    const-string p1, "registeredUrl"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 145
    :cond_1
    const-string p1, "usage"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 146
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    :cond_2
    const-string p1, "locationUrl"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 148
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 149
    :cond_3
    const-string p1, "content"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 151
    new-instance p1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-direct {p1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    goto/16 :goto_0

    .line 152
    :cond_4
    const-string p1, "contentProtection"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 153
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 154
    :cond_5
    const-string p1, "affiliate"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 155
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 156
    :cond_6
    const-string p1, "injectJS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_7

    .line 157
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 158
    :cond_7
    const-string p1, "script"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 159
    const-string p1, "pattern"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    const-string p2, "regexp"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 161
    const-string v0, "file"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_13

    .line 162
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->inInjectJsTag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 163
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    new-instance v1, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;

    invoke-direct {v1, p1, p2, p4}, Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->addScript(Lcom/appsgeyser/multiTabApp/configuration/IncludeScriptConfigEntity;)V

    .line 164
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->scriptTagsFound:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 166
    :cond_8
    const-string p1, "urlBarMenuItems"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 167
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto/16 :goto_0

    .line 168
    :cond_9
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "button"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 169
    const-string p1, "name"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    const-string p2, "back"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 171
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->BACK:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 172
    :cond_a
    const-string p2, "forward"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 173
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->FORWARD:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 174
    :cond_b
    const-string p2, "refresh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 175
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REFRESH:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 176
    :cond_c
    const-string p2, "request_desktop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 177
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->REQUEST_DESKTOP:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 178
    :cond_d
    const-string p2, "add_to_home"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 179
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->ADD_TO_HOME:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto/16 :goto_0

    .line 180
    :cond_e
    const-string p2, "home"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 181
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->HOME:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto :goto_0

    .line 182
    :cond_f
    const-string p2, "downloads_list"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 183
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p2, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;

    sget-object p3, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;->DOWNLOADS_LIST:Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;

    invoke-direct {p2, p3}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;-><init>(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton$UrlBarMenuButtonTypes;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto :goto_0

    .line 184
    :cond_10
    const-string p2, "link"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "url"

    const-string v0, "title"

    if-eqz p2, :cond_11

    .line 185
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    iget-object p3, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance p4, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;

    invoke-direct {p4, p1, p2}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuLinkButton;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto :goto_0

    .line 188
    :cond_11
    const-string p2, "icon"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 189
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 191
    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 192
    iget-object p4, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;

    invoke-direct {v0, p1, p3, p2}, Lcom/appsgeyser/multiTabApp/configuration/UrlBarIcon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->addUrlBarMenuButton(Lcom/appsgeyser/multiTabApp/configuration/UrlBarMenuButton;)V

    goto :goto_0

    .line 194
    :cond_12
    const-string p1, "splashScreen"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 195
    const-string p1, "image"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 197
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/configuration/XMLConfigurationHandler;->webWidgetConfiguration:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    invoke-virtual {p2, p1}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->setSplashScreen(Ljava/lang/String;)V

    :cond_13
    :goto_0
    return-void
.end method
