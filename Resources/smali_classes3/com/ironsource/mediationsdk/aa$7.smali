.class final Lcom/ironsource/mediationsdk/aa$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/aa;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/aa;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/aa$7;->a:Lcom/ironsource/mediationsdk/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/aa$7;->a:Lcom/ironsource/mediationsdk/aa;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/aa;->a(Lcom/ironsource/mediationsdk/aa;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/mediationsdk/aa$7;->a:Lcom/ironsource/mediationsdk/aa;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/aa;->a(Lcom/ironsource/mediationsdk/aa;)Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;->onRewardedVideoAdStarted()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/aa$7;->a:Lcom/ironsource/mediationsdk/aa;

    const-string v1, "onRewardedVideoAdStarted()"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/aa;->a(Lcom/ironsource/mediationsdk/aa;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
