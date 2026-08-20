.class Lcom/adcolony/sdk/AdColonyInterstitial$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColonyInterstitial;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adcolony/sdk/AdColonyInterstitial;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyInterstitial;Lcom/adcolony/sdk/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    iput-object p2, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->a:Lcom/adcolony/sdk/d;

    iput-object p3, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/adcolony/sdk/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->a:Lcom/adcolony/sdk/d;

    invoke-static {}, Lcom/adcolony/sdk/c0;->b()Lcom/adcolony/sdk/f1;

    move-result-object v3

    iget-object v4, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v4}, Lcom/adcolony/sdk/d;->a(Landroid/content/Context;Lcom/adcolony/sdk/f1;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-static {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->b(Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-static {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->b(Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    .line 7
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/AdColonyInterstitial;->setListener(Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->o()V

    .line 10
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->destroy()Z

    .line 11
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Lcom/adcolony/sdk/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/k;->e(Z)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-static {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->c(Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->a:Lcom/adcolony/sdk/d;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-static {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->c(Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 16
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyInterstitial$c;->c:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-static {v0, v2}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/AdColonyInterstitial;Lcom/adcolony/sdk/c;)Lcom/adcolony/sdk/c;

    :cond_2
    return-void
.end method
