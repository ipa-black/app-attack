.class final Lcom/yandex/metrica/impl/ob/xg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/xg;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yandex/metrica/impl/ob/dg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/xg;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/xg;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/xg$b;->a:Lcom/yandex/metrica/impl/ob/xg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/impl/ob/dg;Lcom/yandex/metrica/impl/ob/dg;)I
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/dg;->c:J

    iget-wide v2, p2, Lcom/yandex/metrica/impl/ob/dg;->c:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->getSign(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/xg$b;->a:Lcom/yandex/metrica/impl/ob/xg;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/xg;->a(Lcom/yandex/metrica/impl/ob/xg;)Lcom/yandex/metrica/impl/ob/Zl;

    move-result-object v0

    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/xg$b;->a:Lcom/yandex/metrica/impl/ob/xg;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/xg;->a(Lcom/yandex/metrica/impl/ob/xg;)Lcom/yandex/metrica/impl/ob/Zl;

    move-result-object v0

    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/Zl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "sourcePriorities[second.source]"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/dg;

    check-cast p2, Lcom/yandex/metrica/impl/ob/dg;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/xg$b;->a(Lcom/yandex/metrica/impl/ob/dg;Lcom/yandex/metrica/impl/ob/dg;)I

    move-result p1

    return p1
.end method
