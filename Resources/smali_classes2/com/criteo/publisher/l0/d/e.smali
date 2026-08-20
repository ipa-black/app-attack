.class Lcom/criteo/publisher/l0/d/e;
.super Ljava/lang/Object;
.source "Tcf1GdprStrategy.java"

# interfaces
.implements Lcom/criteo/publisher/l0/d/g;


# instance fields
.field private final a:Lcom/criteo/publisher/n0/q;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/n0/q;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/criteo/publisher/l0/d/e;->a:Lcom/criteo/publisher/n0/q;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/criteo/publisher/l0/d/e;->a:Lcom/criteo/publisher/n0/q;

    const-string v1, "IABConsent_SubjectToGDPR"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/n0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/criteo/publisher/l0/d/e;->a:Lcom/criteo/publisher/n0/q;

    const-string v1, "IABConsent_ConsentString"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/n0/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/criteo/publisher/l0/d/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/criteo/publisher/l0/d/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
