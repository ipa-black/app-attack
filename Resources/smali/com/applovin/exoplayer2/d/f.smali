.class public interface abstract Lcom/applovin/exoplayer2/d/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/d/f$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/applovin/exoplayer2/d/f;Lcom/applovin/exoplayer2/d/f;)V
    .locals 1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/d/f;->a(Lcom/applovin/exoplayer2/d/g$a;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/applovin/exoplayer2/d/f;->b(Lcom/applovin/exoplayer2/d/g$a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/applovin/exoplayer2/d/g$a;)V
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract b(Lcom/applovin/exoplayer2/d/g$a;)V
.end method

.method public abstract c()I
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Lcom/applovin/exoplayer2/d/f$a;
.end method

.method public abstract f()Ljava/util/UUID;
.end method

.method public abstract g()Lcom/applovin/exoplayer2/c/b;
.end method

.method public abstract h()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
