.class public Lcom/criteo/publisher/z;
.super Ljava/lang/Object;
.source "Session.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/z$a;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lkotlin/Lazy;

.field private final c:Lcom/criteo/publisher/i;

.field private final d:Lcom/criteo/publisher/c0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/criteo/publisher/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/criteo/publisher/z$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/i;Lcom/criteo/publisher/c0/d;)V
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uniqueIdGenerator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/z;->c:Lcom/criteo/publisher/i;

    iput-object p2, p0, Lcom/criteo/publisher/z;->d:Lcom/criteo/publisher/c0/d;

    .line 31
    invoke-interface {p1}, Lcom/criteo/publisher/i;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/criteo/publisher/z;->a:J

    .line 36
    new-instance p1, Lcom/criteo/publisher/z$b;

    invoke-direct {p1, p0}, Lcom/criteo/publisher/z$b;-><init>(Lcom/criteo/publisher/z;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/z;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/criteo/publisher/z;)Lcom/criteo/publisher/c0/d;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/criteo/publisher/z;->d:Lcom/criteo/publisher/c0/d;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/z;->c:Lcom/criteo/publisher/i;

    invoke-interface {v0}, Lcom/criteo/publisher/i;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/criteo/publisher/z;->a:J

    sub-long/2addr v0, v2

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/criteo/publisher/z;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
