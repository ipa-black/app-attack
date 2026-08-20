.class public final Lcom/yandex/metrica/impl/ob/hb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/gb$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/gb$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/gb$b;-><init>(ZI)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/hb;->a:Lcom/yandex/metrica/impl/ob/gb$b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/impl/ob/Uh;)Lcom/yandex/metrica/impl/ob/gb;
    .locals 8

    .line 1
    new-instance v6, Lcom/yandex/metrica/impl/ob/gb;

    .line 3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/hb;->a:Lcom/yandex/metrica/impl/ob/gb$b;

    .line 4
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    const-string v1, "GlobalServiceLocator.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->q()Lcom/yandex/metrica/impl/ob/Pm;

    move-result-object v0

    const-string v1, "GlobalServiceLocator.get\u2026).serviceExecutorProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Pm;->g()Lcom/yandex/metrica/core/api/executors/ICommonExecutor;

    move-result-object v4

    const-string v0, "GlobalServiceLocator.get\u2026rovider.supportIOExecutor"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v5, Lcom/yandex/metrica/impl/ob/kb;

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/jb;

    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    move-result-object v1

    const-string v7, "YandexMetricaSelfReportFacade.getReporter()"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/jb;-><init>(Lcom/yandex/metrica/impl/ob/Uh;Lcom/yandex/metrica/impl/ob/M0;)V

    .line 11
    invoke-direct {v5, v0, p1}, Lcom/yandex/metrica/impl/ob/kb;-><init>(Lcom/yandex/metrica/impl/ob/jb;Lcom/yandex/metrica/impl/ob/Uh;)V

    move-object v0, v6

    move-object v1, p1

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/yandex/metrica/impl/ob/gb;-><init>(Lcom/yandex/metrica/impl/ob/Uh;Lcom/yandex/metrica/impl/ob/gb$b;Lkotlin/random/Random;Lcom/yandex/metrica/core/api/executors/ICommonExecutor;Lcom/yandex/metrica/impl/ob/kb;)V

    return-object v6
.end method
