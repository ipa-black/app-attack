.class public Lcom/criteo/publisher/j;
.super Ljava/lang/Object;
.source "ConsumableBidLoader.java"


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/e;

.field private final c:Lcom/criteo/publisher/i;

.field private final d:Lcom/criteo/publisher/e0/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/e;Lcom/criteo/publisher/i;Lcom/criteo/publisher/e0/c;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/j;->a:Lcom/criteo/publisher/logging/g;

    .line 53
    iput-object p1, p0, Lcom/criteo/publisher/j;->b:Lcom/criteo/publisher/e;

    .line 54
    iput-object p2, p0, Lcom/criteo/publisher/j;->c:Lcom/criteo/publisher/i;

    .line 55
    iput-object p3, p0, Lcom/criteo/publisher/j;->d:Lcom/criteo/publisher/e0/c;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/j;)Lcom/criteo/publisher/i;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/criteo/publisher/j;->c:Lcom/criteo/publisher/i;

    return-object p0
.end method

.method static synthetic b(Lcom/criteo/publisher/j;)Lcom/criteo/publisher/logging/g;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/criteo/publisher/j;->a:Lcom/criteo/publisher/logging/g;

    return-object p0
.end method

.method static synthetic c(Lcom/criteo/publisher/j;)Lcom/criteo/publisher/e0/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/criteo/publisher/j;->d:Lcom/criteo/publisher/e0/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/j;->b:Lcom/criteo/publisher/e;

    new-instance v1, Lcom/criteo/publisher/j$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/criteo/publisher/j$a;-><init>(Lcom/criteo/publisher/j;Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    return-void
.end method
