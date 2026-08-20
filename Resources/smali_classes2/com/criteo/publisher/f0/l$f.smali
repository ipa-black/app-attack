.class Lcom/criteo/publisher/f0/l$f;
.super Lcom/criteo/publisher/x;
.source "CsmBidLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/model/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/criteo/publisher/model/s;

.field final synthetic d:Lcom/criteo/publisher/f0/l;


# direct methods
.method public static synthetic $r8$lambda$_dhGCLMzeQqwAO2yKMZZM-YqNvo(Lcom/criteo/publisher/f0/n$a;)V
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/f0/l$f;->a(Lcom/criteo/publisher/f0/n$a;)V

    return-void
.end method

.method constructor <init>(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/s;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/criteo/publisher/f0/l$f;->d:Lcom/criteo/publisher/f0/l;

    iput-object p2, p0, Lcom/criteo/publisher/f0/l$f;->c:Lcom/criteo/publisher/model/s;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/criteo/publisher/f0/n$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0, v0}, Lcom/criteo/publisher/f0/n$a;->a(Z)Lcom/criteo/publisher/f0/n$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/criteo/publisher/f0/l$f;->c:Lcom/criteo/publisher/model/s;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/s;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/criteo/publisher/f0/l$f;->c:Lcom/criteo/publisher/model/s;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/s;->o()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/criteo/publisher/f0/l$f;->d:Lcom/criteo/publisher/f0/l;

    invoke-static {v1}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/f0/r;

    move-result-object v1

    new-instance v2, Lcom/criteo/publisher/f0/l$f$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/criteo/publisher/f0/l$f$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/criteo/publisher/f0/r;->a(Ljava/lang/String;Lcom/criteo/publisher/f0/r$a;)V

    return-void
.end method
