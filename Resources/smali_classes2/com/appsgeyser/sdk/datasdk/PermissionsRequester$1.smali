.class Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;
.super Ljava/lang/Thread;
.source "PermissionsRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->delayedAskPermission(Ljava/util/HashSet;Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$permissions:Ljava/util/HashSet;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/HashSet;I)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;->val$permissions:Ljava/util/HashSet;

    iput p3, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-wide/16 v0, 0x2710

    .line 158
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 161
    :goto_0
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getInstance()Lcom/appsgeyser/sdk/InternalEntryPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/sdk/InternalEntryPoint;->getAppState()Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->ON_PAUSE:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1f4

    .line 162
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;->val$permissions:Ljava/util/HashSet;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget v2, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 166
    new-instance v0, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;

    iget-object v1, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;-><init>(Landroid/content/Context;)V

    const-string v1, "NotificationPermRequestDate"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsgeyser/sdk/configuration/PreferencesCoder;->savePrefLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 169
    const-string v1, "PermissionsTag"

    const-string v2, "Permission thread sleep exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
