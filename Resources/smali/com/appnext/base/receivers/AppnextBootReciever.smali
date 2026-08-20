.class public Lcom/appnext/base/receivers/AppnextBootReciever;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 20
    :try_start_0
    invoke-static {p1}, Lcom/appnext/base/b/e;->init(Landroid/content/Context;)V

    .line 21
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 22
    invoke-static {}, Lcom/appnext/base/b/g;->aN()Lcom/appnext/base/b/g;

    move-result-object p2

    new-instance v0, Lcom/appnext/base/receivers/AppnextBootReciever$1;

    invoke-direct {v0, p0, p1}, Lcom/appnext/base/receivers/AppnextBootReciever$1;-><init>(Lcom/appnext/base/receivers/AppnextBootReciever;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lcom/appnext/base/b/g;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
