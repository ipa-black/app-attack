.class public final Lcom/appodeal/ads/regulator/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/regulator/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/regulator/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/appodeal/consent/Consent;

.field public final c:Lcom/appodeal/consent/Consent$Status;

.field public final d:Lcom/appodeal/consent/Consent$Zone;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;)V
    .locals 1

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appodeal/ads/regulator/a$f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/appodeal/ads/regulator/a$f;->b:Lcom/appodeal/consent/Consent;

    iput-object p3, p0, Lcom/appodeal/ads/regulator/a$f;->c:Lcom/appodeal/consent/Consent$Status;

    iput-object p4, p0, Lcom/appodeal/ads/regulator/a$f;->d:Lcom/appodeal/consent/Consent$Zone;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/a$f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/appodeal/consent/Consent;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/a$f;->b:Lcom/appodeal/consent/Consent;

    return-object v0
.end method

.method public final c()Lcom/appodeal/consent/Consent$Status;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/a$f;->c:Lcom/appodeal/consent/Consent$Status;

    return-object v0
.end method

.method public final d()Lcom/appodeal/consent/Consent$Zone;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/a$f;->d:Lcom/appodeal/consent/Consent$Zone;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/appodeal/ads/regulator/a$f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appodeal/ads/regulator/a$f;

    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/appodeal/ads/regulator/a$f;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->b:Lcom/appodeal/consent/Consent;

    iget-object v3, p1, Lcom/appodeal/ads/regulator/a$f;->b:Lcom/appodeal/consent/Consent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->c:Lcom/appodeal/consent/Consent$Status;

    iget-object v3, p1, Lcom/appodeal/ads/regulator/a$f;->c:Lcom/appodeal/consent/Consent$Status;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->d:Lcom/appodeal/consent/Consent$Zone;

    iget-object p1, p1, Lcom/appodeal/ads/regulator/a$f;->d:Lcom/appodeal/consent/Consent$Zone;

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/appodeal/ads/regulator/a$f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->b:Lcom/appodeal/consent/Consent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/appodeal/consent/Consent;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->c:Lcom/appodeal/consent/Consent$Status;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/appodeal/consent/Consent$Status;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->d:Lcom/appodeal/consent/Consent$Zone;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/appodeal/consent/Consent$Zone;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "OnStarted(appKey="

    invoke-static {v0}, Lcom/appodeal/ads/h0;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publisherConsent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->b:Lcom/appodeal/consent/Consent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->c:Lcom/appodeal/consent/Consent$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/regulator/a$f;->d:Lcom/appodeal/consent/Consent$Zone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
