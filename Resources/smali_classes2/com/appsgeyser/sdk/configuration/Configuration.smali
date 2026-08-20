.class public final Lcom/appsgeyser/sdk/configuration/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static final DEFAULT_APPGUID:Ljava/lang/String; = ""

.field private static final DEFAULT_APPID:Ljava/lang/String; = ""

.field private static final DEFAULT_TEMPLATE_VERSION:Ljava/lang/String; = ""

.field private static final KEY_APPLICATION_ID:Ljava/lang/String; = "ApplicationId"

.field private static final KEY_APP_GUID:Ljava/lang/String; = "AppGuid"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "AppName"

.field private static final KEY_REGISTERED:Ljava/lang/String; = "Registered"

.field private static final KEY_TEMPLATE_VERSION:Ljava/lang/String; = "TemplateVersion"

.field private static final METRICA_APPSGEYSER_SDK_VERSION_NAME:Ljava/lang/String; = "appsgeyserSdkVersion"

.field private static final METRICA_JSON_LOAD:Ljava/lang/String; = "metricaJsonLoad"

.field private static final METRICA_TEMPLATE_VERSION_NAME:Ljava/lang/String; = "templateVersion"

.field private static instance:Lcom/appsgeyser/sdk/configuration/Configuration;


# instance fields
.field private appGuid:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private publisherName:Ljava/lang/String;

.field private registered:Z

.field private settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->publisherName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->registered:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/appsgeyser/sdk/configuration/Configuration;
    .locals 1

    .line 40
    sget-object v0, Lcom/appsgeyser/sdk/configuration/Configuration;->instance:Lcom/appsgeyser/sdk/configuration/Configuration;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-direct {v0}, Lcom/appsgeyser/sdk/configuration/Configuration;-><init>()V

    sput-object v0, Lcom/appsgeyser/sdk/configuration/Configuration;->instance:Lcom/appsgeyser/sdk/configuration/Configuration;

    .line 44
    :cond_0
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-direct {v0, p0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    .line 45
    sget-object p0, Lcom/appsgeyser/sdk/configuration/Configuration;->instance:Lcom/appsgeyser/sdk/configuration/Configuration;

    invoke-direct {p0, v0}, Lcom/appsgeyser/sdk/configuration/Configuration;->setSettingsCoder(Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    .line 47
    sget-object p0, Lcom/appsgeyser/sdk/configuration/Configuration;->instance:Lcom/appsgeyser/sdk/configuration/Configuration;

    return-object p0
.end method

.method private setSettingsCoder(Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    return-void
.end method


# virtual methods
.method public clearApplicationSettings()V
    .locals 3

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "ApplicationId"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "AppGuid"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAppGuid()Ljava/lang/String;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/appsgeyser/sdk/GuidGenerator;->generateNewGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    if-eqz v1, :cond_0

    .line 74
    const-string v2, "AppGuid"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricaOnStartEvent()Ljava/lang/String;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v1, "metricaJsonLoad"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->publisherName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsCoder()Lcom/appsgeyser/sdk/configuration/PreferencesCoder;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    return-object v0
.end method

.method public getTemplateVersion()Ljava/lang/String;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v1, "TemplateVersion"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->registered:Z

    return v0
.end method

.method public loadConfiguration()V
    .locals 3

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->publisherName:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "ApplicationId"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "AppGuid"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appGuid:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v1, "Registered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->getPrefBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->registered:Z

    return-void
.end method

.method public registerNew()V
    .locals 3

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->registered:Z

    .line 123
    iget-object v1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v2, "Registered"

    invoke-virtual {v1, v2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2

    .line 108
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->appName:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    if-eqz v0, :cond_0

    .line 110
    const-string v1, "AppName"

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setApplicationId(Ljava/lang/String;)V
    .locals 2

    .line 89
    iput-object p1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->applicationId:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    if-eqz v0, :cond_0

    .line 91
    const-string v1, "ApplicationId"

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMetricaOnStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    const-string p1, "templateVersion"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string p1, "appsgeyserSdkVersion"

    const-string p2, "2.48.s"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    iget-object p1, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string p2, "metricaJsonLoad"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTemplateVersion(Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/appsgeyser/sdk/configuration/Configuration;->settingsCoder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string v1, "TemplateVersion"

    invoke-virtual {v0, v1, p1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
