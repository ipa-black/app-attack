.class Lcom/criteo/publisher/advancednative/c;
.super Ljava/lang/Object;
.source "AdViewClickHandler.java"

# interfaces
.implements Lcom/criteo/publisher/advancednative/n;


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/criteo/publisher/advancednative/f;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            ">;",
            "Lcom/criteo/publisher/advancednative/f;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/c;->a:Ljava/net/URI;

    .line 41
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/c;->b:Ljava/lang/ref/Reference;

    .line 42
    iput-object p3, p0, Lcom/criteo/publisher/advancednative/c;->c:Lcom/criteo/publisher/advancednative/f;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/advancednative/c;)Ljava/lang/ref/Reference;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/criteo/publisher/advancednative/c;->b:Ljava/lang/ref/Reference;

    return-object p0
.end method

.method static synthetic b(Lcom/criteo/publisher/advancednative/c;)Lcom/criteo/publisher/advancednative/f;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/criteo/publisher/advancednative/c;->c:Lcom/criteo/publisher/advancednative/f;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/c;->c:Lcom/criteo/publisher/advancednative/f;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/c;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/advancednative/f;->a(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    .line 49
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/c;->c:Lcom/criteo/publisher/advancednative/f;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/c;->a:Ljava/net/URI;

    new-instance v2, Lcom/criteo/publisher/advancednative/c$a;

    invoke-direct {v2, p0}, Lcom/criteo/publisher/advancednative/c$a;-><init>(Lcom/criteo/publisher/advancednative/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/advancednative/f;->a(Ljava/net/URI;Lcom/criteo/publisher/b0/c;)V

    return-void
.end method
