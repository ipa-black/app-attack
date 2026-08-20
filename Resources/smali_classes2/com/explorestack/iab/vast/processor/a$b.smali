.class public Lcom/explorestack/iab/vast/processor/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/processor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/util/Pair<",
        "Lcom/explorestack/iab/vast/tags/LinearCreativeTag;",
        "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/explorestack/iab/vast/processor/a;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/vast/processor/a;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/processor/a$b;->a:Lcom/explorestack/iab/vast/processor/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/explorestack/iab/vast/processor/a;Lcom/explorestack/iab/vast/processor/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/processor/a$b;-><init>(Lcom/explorestack/iab/vast/processor/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/explorestack/iab/vast/tags/LinearCreativeTag;",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;",
            "Landroid/util/Pair<",
            "Lcom/explorestack/iab/vast/tags/LinearCreativeTag;",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getWidth()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getHeight()I

    move-result p1

    mul-int/2addr v0, p1

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getWidth()I

    move-result p1

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/explorestack/iab/vast/tags/MediaFileTag;

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getHeight()I

    move-result p2

    mul-int/2addr p1, p2

    iget-object p2, p0, Lcom/explorestack/iab/vast/processor/a$b;->a:Lcom/explorestack/iab/vast/processor/a;

    invoke-static {p2}, Lcom/explorestack/iab/vast/processor/a;->a(Lcom/explorestack/iab/vast/processor/a;)I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v0, p0, Lcom/explorestack/iab/vast/processor/a$b;->a:Lcom/explorestack/iab/vast/processor/a;

    invoke-static {v0}, Lcom/explorestack/iab/vast/processor/a;->a(Lcom/explorestack/iab/vast/processor/a;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AreaComparator: obj1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " obj2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultMediaPicker"

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p2, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/processor/a$b;->a(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result p1

    return p1
.end method
