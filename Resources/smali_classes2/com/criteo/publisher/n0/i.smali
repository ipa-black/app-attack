.class public Lcom/criteo/publisher/n0/i;
.super Landroid/os/ResultReceiver;
.source "CriteoResultReceiver.java"


# instance fields
.field private final a:Lcom/criteo/publisher/m0/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/criteo/publisher/m0/d;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 48
    iput-object p2, p0, Lcom/criteo/publisher/n0/i;->a:Lcom/criteo/publisher/m0/d;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    .line 54
    const-string p1, "Action"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xc9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xca

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/n0/i;->a:Lcom/criteo/publisher/m0/d;

    sget-object p2, Lcom/criteo/publisher/p;->d:Lcom/criteo/publisher/p;

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/m0/d;->a(Lcom/criteo/publisher/p;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/criteo/publisher/n0/i;->a:Lcom/criteo/publisher/m0/d;

    sget-object p2, Lcom/criteo/publisher/p;->e:Lcom/criteo/publisher/p;

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/m0/d;->a(Lcom/criteo/publisher/p;)V

    :cond_2
    :goto_0
    return-void
.end method
