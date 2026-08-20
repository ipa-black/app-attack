.class public final Lcom/google/android/gms/internal/ads/zzggu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzggu;->zza:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzggu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggu;->zzd()V

    return-void
.end method

.method private final zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggu;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzggs;

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzggs;->zzj(Lcom/google/android/gms/internal/ads/zzggs;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggu;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzggs;->zzg(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggu;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzggs;->zzk(Lcom/google/android/gms/internal/ads/zzggs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggu;->zzd()V

    .line 4
    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzggs;->zzi(Lcom/google/android/gms/internal/ads/zzggs;Lcom/google/android/gms/internal/ads/zzggu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggu;->zza:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry has already been added to a KeysetHandle.Builder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzggw;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgtj;->zzd()Lcom/google/android/gms/internal/ads/zzgtg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggu;->zza:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 3
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzggs;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzggs;->zzf(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggt;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggt;->zza()Lcom/google/android/gms/internal/ads/zzggt;

    move-result-object v5

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzggs;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzggs;->zzf(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggt;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggt;->zza()Lcom/google/android/gms/internal/ads/zzggt;

    move-result-object v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    .line 5
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzggu;->zza:Ljava/util/List;

    .line 6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzggs;

    .line 7
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzggs;->zzb(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggo;

    .line 8
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzggs;->zzf(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggt;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 9
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzggs;->zzf(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggt;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggt;->zza()Lcom/google/android/gms/internal/ads/zzggt;

    move-result-object v8

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-ne v7, v8, :cond_6

    move v7, v2

    :goto_3
    if-eqz v7, :cond_4

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_4
    new-instance v7, Ljava/security/SecureRandom;

    .line 11
    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    new-array v8, v10, [B

    move v11, v2

    :goto_4
    if-nez v11, :cond_5

    .line 12
    invoke-virtual {v7, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte v11, v8, v2

    and-int/lit8 v11, v11, 0x7f

    shl-int/lit8 v11, v11, 0x18

    const/4 v12, 0x1

    aget-byte v12, v8, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/4 v12, 0x2

    aget-byte v12, v8, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    aget-byte v12, v8, v9

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    goto :goto_4

    :cond_5
    move v7, v11

    goto :goto_3

    .line 13
    :cond_6
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzggs;->zzf(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggt;

    move v7, v2

    .line 14
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 15
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzggs;->zza(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggf;

    .line 17
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzggs;->zzh(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzghb;

    move-result-object v11

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzggs;->zzc()Lcom/google/android/gms/internal/ads/zzggo;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/internal/ads/zzggo;->zza:Lcom/google/android/gms/internal/ads/zzggo;

    .line 19
    invoke-virtual {v13, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_5

    .line 30
    :cond_8
    sget-object v9, Lcom/google/android/gms/internal/ads/zzggo;->zzb:Lcom/google/android/gms/internal/ads/zzggo;

    .line 20
    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    move v9, v10

    goto :goto_5

    :cond_9
    sget-object v9, Lcom/google/android/gms/internal/ads/zzggo;->zzc:Lcom/google/android/gms/internal/ads/zzggo;

    .line 21
    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x5

    .line 17
    :goto_5
    check-cast v11, Lcom/google/android/gms/internal/ads/zzgln;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzgln;->zza()Lcom/google/android/gms/internal/ads/zzgmg;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgmg;->zzb()Lcom/google/android/gms/internal/ads/zzgtb;

    move-result-object v11

    .line 22
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzghm;->zzc(Lcom/google/android/gms/internal/ads/zzgtb;)Lcom/google/android/gms/internal/ads/zzgsw;

    move-result-object v11

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgti;->zzd()Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object v12

    .line 24
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzgth;->zzb(I)Lcom/google/android/gms/internal/ads/zzgth;

    .line 25
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzgth;->zzd(I)Lcom/google/android/gms/internal/ads/zzgth;

    .line 26
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzgth;->zza(Lcom/google/android/gms/internal/ads/zzgsw;)Lcom/google/android/gms/internal/ads/zzgth;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgmg;->zzb()Lcom/google/android/gms/internal/ads/zzgtb;

    move-result-object v7

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgtb;->zze()Lcom/google/android/gms/internal/ads/zzguc;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzgth;->zzc(Lcom/google/android/gms/internal/ads/zzguc;)Lcom/google/android/gms/internal/ads/zzgth;

    .line 28
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgti;

    .line 29
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgtg;->zza(Lcom/google/android/gms/internal/ads/zzgti;)Lcom/google/android/gms/internal/ads/zzgtg;

    .line 30
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzggs;->zzk(Lcom/google/android/gms/internal/ads/zzggs;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v5, :cond_a

    move-object v5, v8

    goto/16 :goto_2

    .line 33
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Two primaries were set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown key status"

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is used twice in the keyset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v5, :cond_f

    .line 36
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtg;->zzb(I)Lcom/google/android/gms/internal/ads/zzgtg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzggw;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxz;->zzak()Lcom/google/android/gms/internal/ads/zzgyd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgtj;

    invoke-direct {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzggw;-><init>(Lcom/google/android/gms/internal/ads/zzgtj;Lcom/google/android/gms/internal/ads/zzggv;)V

    return-object v1

    .line 35
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No primary was set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
