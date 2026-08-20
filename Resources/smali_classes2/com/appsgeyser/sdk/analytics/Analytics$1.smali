.class Lcom/appsgeyser/sdk/analytics/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/analytics/Analytics;->sendActivityStartedInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/sdk/analytics/Analytics;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/appsgeyser/sdk/analytics/Analytics;Lcom/android/installreferrer/api/InstallReferrerClient;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->this$0:Lcom/appsgeyser/sdk/analytics/Analytics;

    iput-object p2, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p3, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 2

    .line 82
    const-string v0, "referrerLogTag"

    const-string v1, "Install referrer service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 5

    const/4 v0, 0x0

    .line 54
    const-string v1, "referrerLogTag"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    const-string p1, "Feature not supported"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p1, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->this$0:Lcom/appsgeyser/sdk/analytics/Analytics;

    invoke-static {p1}, Lcom/appsgeyser/sdk/analytics/Analytics;->access$000(Lcom/appsgeyser/sdk/analytics/Analytics;)Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->FEATURE_NOT_SUPPORTED:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {p1, v1, v2, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendReferrerStatsRequest(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;Lcom/android/installreferrer/api/ReferrerDetails;)V

    goto :goto_0

    .line 73
    :cond_1
    const-string p1, "Service unavailable"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object p1, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->this$0:Lcom/appsgeyser/sdk/analytics/Analytics;

    invoke-static {p1}, Lcom/appsgeyser/sdk/analytics/Analytics;->access$000(Lcom/appsgeyser/sdk/analytics/Analytics;)Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->UNAVAILABLE:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {p1, v1, v2, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendReferrerStatsRequest(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;Lcom/android/installreferrer/api/ReferrerDetails;)V

    goto :goto_0

    .line 57
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->val$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    .line 58
    const-string v2, "Sending referrer info"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v2, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->this$0:Lcom/appsgeyser/sdk/analytics/Analytics;

    invoke-static {v2}, Lcom/appsgeyser/sdk/analytics/Analytics;->access$000(Lcom/appsgeyser/sdk/analytics/Analytics;)Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object v2

    iget-object v3, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->val$context:Landroid/content/Context;

    sget-object v4, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->OK:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {v2, v3, v4, p1}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendReferrerStatsRequest(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;Lcom/android/installreferrer/api/ReferrerDetails;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RE while getting OK response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->this$0:Lcom/appsgeyser/sdk/analytics/Analytics;

    invoke-static {p1}, Lcom/appsgeyser/sdk/analytics/Analytics;->access$000(Lcom/appsgeyser/sdk/analytics/Analytics;)Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;

    move-result-object p1

    iget-object v1, p0, Lcom/appsgeyser/sdk/analytics/Analytics$1;->val$context:Landroid/content/Context;

    sget-object v2, Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;->REMOTE_EXCEPTION:Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;

    invoke-virtual {p1, v1, v2, v0}, Lcom/appsgeyser/sdk/server/implementation/AppsgeyserServerClient;->sendReferrerStatsRequest(Landroid/content/Context;Lcom/appsgeyser/sdk/configuration/Constants$ReferrerInfoStatus;Lcom/android/installreferrer/api/ReferrerDetails;)V

    :goto_0
    return-void
.end method
