.class final Lcom/google/android/gms/internal/ads/zzgmv;
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgou;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgvq;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgou;->zzg()Lcom/google/android/gms/internal/ads/zzgwv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgwv;->zzE()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgvq;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgou;->zzf()Lcom/google/android/gms/internal/ads/zzgpa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpa;->zza()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgvt;-><init>(Lcom/google/android/gms/internal/ads/zzgor;I)V

    return-object v0
.end method
