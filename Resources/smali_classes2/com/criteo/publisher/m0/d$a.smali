.class public final Lcom/criteo/publisher/m0/d$a;
.super Lcom/criteo/publisher/x;
.source "InterstitialListenerNotifier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/m0/d;->a(Lcom/criteo/publisher/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/criteo/publisher/m0/d;

.field final synthetic d:Lcom/criteo/publisher/p;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/m0/d;Lcom/criteo/publisher/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/p;",
            ")V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/criteo/publisher/m0/d$a;->c:Lcom/criteo/publisher/m0/d;

    iput-object p2, p0, Lcom/criteo/publisher/m0/d$a;->d:Lcom/criteo/publisher/p;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/criteo/publisher/m0/d$a;->c:Lcom/criteo/publisher/m0/d;

    invoke-static {v0}, Lcom/criteo/publisher/m0/d;->a(Lcom/criteo/publisher/m0/d;)Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/CriteoInterstitialAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/criteo/publisher/m0/d$a;->c:Lcom/criteo/publisher/m0/d;

    iget-object v2, p0, Lcom/criteo/publisher/m0/d$a;->d:Lcom/criteo/publisher/p;

    invoke-static {v1, v0, v2}, Lcom/criteo/publisher/m0/d;->a(Lcom/criteo/publisher/m0/d;Lcom/criteo/publisher/CriteoInterstitialAdListener;Lcom/criteo/publisher/p;)V

    :cond_0
    return-void
.end method
