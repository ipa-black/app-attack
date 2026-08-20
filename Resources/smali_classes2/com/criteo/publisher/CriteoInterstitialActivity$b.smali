.class Lcom/criteo/publisher/CriteoInterstitialActivity$b;
.super Ljava/lang/Object;
.source "CriteoInterstitialActivity.java"

# interfaces
.implements Lcom/criteo/publisher/b0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/CriteoInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/criteo/publisher/CriteoInterstitialActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/criteo/publisher/CriteoInterstitialActivity;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Lcom/criteo/publisher/CriteoInterstitialActivity$a;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/criteo/publisher/CriteoInterstitialActivity$b;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/CriteoInterstitialActivity;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {v0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->a(Lcom/criteo/publisher/CriteoInterstitialActivity;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/CriteoInterstitialActivity;

    if-eqz v0, :cond_0

    .line 161
    invoke-static {v0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->b(Lcom/criteo/publisher/CriteoInterstitialActivity;)V

    :cond_0
    return-void
.end method
