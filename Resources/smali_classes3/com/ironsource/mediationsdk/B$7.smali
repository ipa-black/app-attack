.class final Lcom/ironsource/mediationsdk/B$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/B;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/B;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/B;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/B$7;->a:Lcom/ironsource/mediationsdk/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/B$7;->a:Lcom/ironsource/mediationsdk/B;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/B;->a(Lcom/ironsource/mediationsdk/B;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClicked()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/B$7;->a:Lcom/ironsource/mediationsdk/B;

    const-string v1, "onInterstitialAdClicked()"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/B;->a(Lcom/ironsource/mediationsdk/B;Ljava/lang/String;)V

    return-void
.end method
