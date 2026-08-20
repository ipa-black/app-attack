.class final Lcom/google/android/gms/internal/ads/zzght;
.super Lcom/google/android/gms/internal/ads/zzgmd;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgmd;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzgzn;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzghy;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzghy;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpd;->zzf()Lcom/google/android/gms/internal/ads/zzgpj;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/ads/zzgvp;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgli;->zzk(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgvp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgno;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzgno;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpd;->zzg()Lcom/google/android/gms/internal/ads/zzgrx;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/ads/zzggz;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgli;->zzk(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzggz;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpd;->zzg()Lcom/google/android/gms/internal/ads/zzgrx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgrx;->zzg()Lcom/google/android/gms/internal/ads/zzgsd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgsd;->zza()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgvd;-><init>(Lcom/google/android/gms/internal/ads/zzgvp;Lcom/google/android/gms/internal/ads/zzggz;I)V

    return-object v0
.end method
