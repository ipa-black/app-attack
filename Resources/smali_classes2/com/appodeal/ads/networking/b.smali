.class public final Lcom/appodeal/ads/networking/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/networking/b$b;,
        Lcom/appodeal/ads/networking/b$a;,
        Lcom/appodeal/ads/networking/b$c;,
        Lcom/appodeal/ads/networking/b$d;,
        Lcom/appodeal/ads/networking/b$f;,
        Lcom/appodeal/ads/networking/b$e;
    }
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/networking/b$b;

.field public final b:Lcom/appodeal/ads/networking/b$a;

.field public final c:Lcom/appodeal/ads/networking/b$c;

.field public final d:Lcom/appodeal/ads/networking/b$d;

.field public final e:Lcom/appodeal/ads/networking/b$f;

.field public final f:Lcom/appodeal/ads/networking/b$e;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/networking/b$b;Lcom/appodeal/ads/networking/b$a;Lcom/appodeal/ads/networking/b$c;Lcom/appodeal/ads/networking/b$d;Lcom/appodeal/ads/networking/b$f;Lcom/appodeal/ads/networking/b$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/networking/b;->a:Lcom/appodeal/ads/networking/b$b;

    iput-object p2, p0, Lcom/appodeal/ads/networking/b;->b:Lcom/appodeal/ads/networking/b$a;

    iput-object p3, p0, Lcom/appodeal/ads/networking/b;->c:Lcom/appodeal/ads/networking/b$c;

    iput-object p4, p0, Lcom/appodeal/ads/networking/b;->d:Lcom/appodeal/ads/networking/b$d;

    iput-object p5, p0, Lcom/appodeal/ads/networking/b;->e:Lcom/appodeal/ads/networking/b$f;

    iput-object p6, p0, Lcom/appodeal/ads/networking/b;->f:Lcom/appodeal/ads/networking/b$e;

    return-void
.end method


# virtual methods
.method public final a()Lcom/appodeal/ads/networking/b$a;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networking/b;->b:Lcom/appodeal/ads/networking/b$a;

    return-object v0
.end method

.method public final b()Lcom/appodeal/ads/networking/b$b;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networking/b;->a:Lcom/appodeal/ads/networking/b$b;

    return-object v0
.end method

.method public final c()Lcom/appodeal/ads/networking/b$c;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networking/b;->c:Lcom/appodeal/ads/networking/b$c;

    return-object v0
.end method

.method public final d()Lcom/appodeal/ads/networking/b$d;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networking/b;->d:Lcom/appodeal/ads/networking/b$d;

    return-object v0
.end method

.method public final e()Lcom/appodeal/ads/networking/b$e;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networking/b;->f:Lcom/appodeal/ads/networking/b$e;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/networking/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appodeal/ads/networking/b;

    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->a:Lcom/appodeal/ads/networking/b$b;

    iget-object v3, p1, Lcom/appodeal/ads/networking/b;->a:Lcom/appodeal/ads/networking/b$b;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->b:Lcom/appodeal/ads/networking/b$a;

    iget-object v3, p1, Lcom/appodeal/ads/networking/b;->b:Lcom/appodeal/ads/networking/b$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->c:Lcom/appodeal/ads/networking/b$c;

    iget-object v3, p1, Lcom/appodeal/ads/networking/b;->c:Lcom/appodeal/ads/networking/b$c;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->d:Lcom/appodeal/ads/networking/b$d;

    iget-object v3, p1, Lcom/appodeal/ads/networking/b;->d:Lcom/appodeal/ads/networking/b$d;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->e:Lcom/appodeal/ads/networking/b$f;

    iget-object v3, p1, Lcom/appodeal/ads/networking/b;->e:Lcom/appodeal/ads/networking/b$f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->f:Lcom/appodeal/ads/networking/b$e;

    iget-object p1, p1, Lcom/appodeal/ads/networking/b;->f:Lcom/appodeal/ads/networking/b$e;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f()Lcom/appodeal/ads/networking/b$f;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/networking/b;->e:Lcom/appodeal/ads/networking/b$f;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/networking/b;->a:Lcom/appodeal/ads/networking/b$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/appodeal/ads/networking/b$b;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appodeal/ads/networking/b;->b:Lcom/appodeal/ads/networking/b$a;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/appodeal/ads/networking/b$a;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appodeal/ads/networking/b;->c:Lcom/appodeal/ads/networking/b$c;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/appodeal/ads/networking/b$c;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appodeal/ads/networking/b;->d:Lcom/appodeal/ads/networking/b$d;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/appodeal/ads/networking/b$d;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appodeal/ads/networking/b;->e:Lcom/appodeal/ads/networking/b$f;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/appodeal/ads/networking/b$f;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appodeal/ads/networking/b;->f:Lcom/appodeal/ads/networking/b$e;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/appodeal/ads/networking/b$e;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Config(appsflyerConfig="

    invoke-static {v0}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->a:Lcom/appodeal/ads/networking/b$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adjustConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->b:Lcom/appodeal/ads/networking/b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", facebookConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->c:Lcom/appodeal/ads/networking/b$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firebaseConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->d:Lcom/appodeal/ads/networking/b$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stackAnalyticConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->e:Lcom/appodeal/ads/networking/b$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sentryAnalyticConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/networking/b;->f:Lcom/appodeal/ads/networking/b$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
