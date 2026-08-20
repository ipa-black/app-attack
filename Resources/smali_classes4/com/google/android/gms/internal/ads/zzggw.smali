.class public final Lcom/google/android/gms/internal/ads/zzggw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgtj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgoj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgtj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggw;->zza:Lcom/google/android/gms/internal/ads/zzgtj;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgoj;->zza:Lcom/google/android/gms/internal/ads/zzgoj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggw;->zzb:Lcom/google/android/gms/internal/ads/zzgoj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgtj;Lcom/google/android/gms/internal/ads/zzggv;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzggw;-><init>(Lcom/google/android/gms/internal/ads/zzgtj;)V

    return-void
.end method

.method static final zza(Lcom/google/android/gms/internal/ads/zzgtj;)Lcom/google/android/gms/internal/ads/zzggw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgtj;->zza()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzggw;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzggw;-><init>(Lcom/google/android/gms/internal/ads/zzgtj;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final zzb(Lcom/google/android/gms/internal/ads/zzggp;)Lcom/google/android/gms/internal/ads/zzggw;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgln;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggp;->zza()Lcom/google/android/gms/internal/ads/zzgtb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgmg;->zza(Lcom/google/android/gms/internal/ads/zzgtb;)Lcom/google/android/gms/internal/ads/zzgmg;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgln;-><init>(Lcom/google/android/gms/internal/ads/zzgmg;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzggu;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzggs;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzggs;-><init>(Lcom/google/android/gms/internal/ads/zzghb;Lcom/google/android/gms/internal/ads/zzggr;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzggs;->zzd()Lcom/google/android/gms/internal/ads/zzggs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzggs;->zze()Lcom/google/android/gms/internal/ads/zzggs;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzggu;->zza(Lcom/google/android/gms/internal/ads/zzggs;)Lcom/google/android/gms/internal/ads/zzggu;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzggu;->zzb()Lcom/google/android/gms/internal/ads/zzggw;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggw;->zza:Lcom/google/android/gms/internal/ads/zzgtj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgho;->zza(Lcom/google/android/gms/internal/ads/zzgtj;)Lcom/google/android/gms/internal/ads/zzgto;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzgtj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggw;->zza:Lcom/google/android/gms/internal/ads/zzgtj;

    return-object v0
.end method

.method public final zzd(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzghm;->zze(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggw;->zza:Lcom/google/android/gms/internal/ads/zzgtj;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgho;->zzb(Lcom/google/android/gms/internal/ads/zzgtj;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzghd;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzghd;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzghc;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzggw;->zzb:Lcom/google/android/gms/internal/ads/zzgoj;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzghd;->zzc(Lcom/google/android/gms/internal/ads/zzgoj;)Lcom/google/android/gms/internal/ads/zzghd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzggw;->zza:Lcom/google/android/gms/internal/ads/zzgtj;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgtj;->zzh()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgti;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgti;->zzk()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgti;->zzc()Lcom/google/android/gms/internal/ads/zzgsw;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzghm;->zzf(Lcom/google/android/gms/internal/ads/zzgsw;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgti;->zza()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzggw;->zza:Lcom/google/android/gms/internal/ads/zzgtj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgtj;->zzc()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 10
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzghd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgti;)Lcom/google/android/gms/internal/ads/zzghd;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzghd;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgti;)Lcom/google/android/gms/internal/ads/zzghd;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzghd;->zzd()Lcom/google/android/gms/internal/ads/zzghi;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzghm;->zzj(Lcom/google/android/gms/internal/ads/zzghi;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No wrapper found for "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
