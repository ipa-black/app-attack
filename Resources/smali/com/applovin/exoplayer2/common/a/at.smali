.class public interface abstract Lcom/applovin/exoplayer2/common/a/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/exoplayer2/common/a/as;
.implements Lcom/applovin/exoplayer2/common/a/au;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/applovin/exoplayer2/common/a/as<",
        "TE;>;",
        "Lcom/applovin/exoplayer2/common/a/au<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public synthetic a()Ljava/util/Set;
    .locals 1

    invoke-interface {p0}, Lcom/applovin/exoplayer2/common/a/at;->b()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public synthetic c()Ljava/util/SortedSet;
    .locals 1

    invoke-interface {p0}, Lcom/applovin/exoplayer2/common/a/at;->b()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
