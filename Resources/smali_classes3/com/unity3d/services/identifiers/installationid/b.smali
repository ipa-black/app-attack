.class public final Lcom/unity3d/services/identifiers/installationid/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Lcom/unity3d/services/identifiers/installationid/a;

.field public final c:Lcom/unity3d/services/identifiers/installationid/a;

.field public final d:Lcom/unity3d/services/identifiers/installationid/a;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/identifiers/installationid/a;Lcom/unity3d/services/identifiers/installationid/a;Lcom/unity3d/services/identifiers/installationid/a;)V
    .locals 1

    const-string v0, "installationIdProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsIdProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unityAdsIdProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/identifiers/installationid/b;->b:Lcom/unity3d/services/identifiers/installationid/a;

    iput-object p2, p0, Lcom/unity3d/services/identifiers/installationid/b;->c:Lcom/unity3d/services/identifiers/installationid/a;

    iput-object p3, p0, Lcom/unity3d/services/identifiers/installationid/b;->d:Lcom/unity3d/services/identifiers/installationid/a;

    const-string p1, ""

    iput-object p1, p0, Lcom/unity3d/services/identifiers/installationid/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unity3d/services/identifiers/installationid/b;->a()V

    invoke-virtual {p0}, Lcom/unity3d/services/identifiers/installationid/b;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->b:Lcom/unity3d/services/identifiers/installationid/a;

    invoke-interface {v0}, Lcom/unity3d/services/identifiers/installationid/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->b:Lcom/unity3d/services/identifiers/installationid/a;

    :goto_0
    invoke-interface {v0}, Lcom/unity3d/services/identifiers/installationid/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->c:Lcom/unity3d/services/identifiers/installationid/a;

    invoke-interface {v0}, Lcom/unity3d/services/identifiers/installationid/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->c:Lcom/unity3d/services/identifiers/installationid/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->d:Lcom/unity3d/services/identifiers/installationid/a;

    invoke-interface {v0}, Lcom/unity3d/services/identifiers/installationid/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->d:Lcom/unity3d/services/identifiers/installationid/a;

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    iput-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->b:Lcom/unity3d/services/identifiers/installationid/a;

    iget-object v1, p0, Lcom/unity3d/services/identifiers/installationid/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/services/identifiers/installationid/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->c:Lcom/unity3d/services/identifiers/installationid/a;

    iget-object v1, p0, Lcom/unity3d/services/identifiers/installationid/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/services/identifiers/installationid/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/services/identifiers/installationid/b;->d:Lcom/unity3d/services/identifiers/installationid/a;

    iget-object v1, p0, Lcom/unity3d/services/identifiers/installationid/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/services/identifiers/installationid/a;->a(Ljava/lang/String;)V

    return-void
.end method
