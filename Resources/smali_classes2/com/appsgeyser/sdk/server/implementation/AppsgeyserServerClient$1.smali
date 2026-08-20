.class Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;
.super Ljava/lang/Object;
.source "AppsgeyserServerClient.java"

# interfaces
.implements Lcom/appsgeyser/sdk/server/implementation/OnRequestDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->getConfigPhp(Landroid/content/Context;Lcom/appsgeyser/sdk/deviceidparser/DeviceIdParameters;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

.field final synthetic val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iput-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    iput-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestDone(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 180
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string p2, "ServerResponse"

    invoke-virtual {p1, p2, p3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :try_start_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->parseFromJson(Ljava/lang/String;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$102(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    .line 184
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getStatUrls()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    invoke-static {}, Lcom/appsgeyser/sdk/server/StatController;->getInstance()Lcom/appsgeyser/sdk/server/StatController;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getStatUrls()Ljava/util/Map;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/server/StatController;->init(Ljava/util/HashMap;)V

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    const-string p2, "ConfigAppBanned"

    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAppBanActive()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefBoolean(Ljava/lang/String;Z)V

    .line 188
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isAppBanActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/PausedContentInfoActivity;->startPausedContentInfoActivity(Landroid/content/Context;Z)V

    return-void

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/appsgeyser/sdk/datasdk/DataSdkController;->startDataSdkController(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    .line 193
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->isActive()Z

    move-result p1

    if-nez p1, :cond_2

    .line 194
    invoke-static {}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->getInstance()Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p2, p3}, Lcom/appsgeyser/sdk/ads/fastTrack/FastTrackAdsController;->requestInit(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;Landroid/content/Context;)V

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p1, p1, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;

    .line 201
    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;->receivedConfigPhp(Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;)V

    goto :goto_0

    .line 203
    :cond_3
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAdditionalJsCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 204
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object p1

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getAdditionalJsCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appsgeyser/sdk/InternalEntryPoint;->setAdditionalJsCode(Ljava/lang/String;)V

    .line 206
    :cond_4
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isInactivityReminderEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 207
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {p2}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getInactivityDaysPeriod()I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/appsgeyser/sdk/utils/ReminderAlarmManager;->startReminderAlarm(Landroid/content/Context;IZ)V

    .line 209
    :cond_5
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p2, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->getOneSignalAppId()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    invoke-static {v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$100(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;)Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/configuration/models/ConfigPhp;->isPushNotificationsActive()Z

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$200(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 211
    :catch_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p1, p1, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;

    .line 212
    iget-object p3, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object v0, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->val$coder:Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    invoke-static {p3, v0, p2, v1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->access$300(Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;Landroid/content/Context;Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$ConfigPhpRequestListener;Lcom/appsgeyser/sdk/configuration/PreferencesCoder;)V

    goto :goto_1

    .line 215
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient$1;->this$0:Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    iget-object p1, p1, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->listenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
