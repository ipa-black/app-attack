.class Lcom/criteo/publisher/f0/l$b;
.super Lcom/criteo/publisher/x;
.source "CsmBidLifecycleListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/model/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/criteo/publisher/model/o;

.field final synthetic d:Lcom/criteo/publisher/f0/l;


# direct methods
.method public static synthetic $r8$lambda$3VNNBBQlkgU6JJe9cggRY2B_BVY(Lcom/criteo/publisher/model/o;JLcom/criteo/publisher/f0/n$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/criteo/publisher/f0/l$b;->a(Lcom/criteo/publisher/model/o;JLcom/criteo/publisher/f0/n$a;)V

    return-void
.end method

.method constructor <init>(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/o;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/criteo/publisher/f0/l$b;->d:Lcom/criteo/publisher/f0/l;

    iput-object p2, p0, Lcom/criteo/publisher/f0/l$b;->c:Lcom/criteo/publisher/model/o;

    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/criteo/publisher/model/o;JLcom/criteo/publisher/f0/n$a;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/criteo/publisher/model/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/criteo/publisher/f0/n$a;->b(Ljava/lang/String;)Lcom/criteo/publisher/f0/n$a;

    .line 116
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/criteo/publisher/f0/n$a;->b(Ljava/lang/Long;)Lcom/criteo/publisher/f0/n$a;

    .line 117
    invoke-virtual {p0}, Lcom/criteo/publisher/model/o;->c()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/criteo/publisher/f0/n$a;->a(Ljava/lang/Integer;)Lcom/criteo/publisher/f0/n$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/criteo/publisher/f0/l$b;->d:Lcom/criteo/publisher/f0/l;

    invoke-static {v0}, Lcom/criteo/publisher/f0/l;->c(Lcom/criteo/publisher/f0/l;)Lcom/criteo/publisher/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lcom/criteo/publisher/f0/l$b;->d:Lcom/criteo/publisher/f0/l;

    iget-object v3, p0, Lcom/criteo/publisher/f0/l$b;->c:Lcom/criteo/publisher/model/o;

    new-instance v4, Lcom/criteo/publisher/f0/l$b$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v0, v1}, Lcom/criteo/publisher/f0/l$b$$ExternalSyntheticLambda0;-><init>(Lcom/criteo/publisher/model/o;J)V

    invoke-static {v2, v3, v4}, Lcom/criteo/publisher/f0/l;->a(Lcom/criteo/publisher/f0/l;Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/f0/r$a;)V

    return-void
.end method
