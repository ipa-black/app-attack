.class public final Lcom/google/android/gms/internal/ads/zzfej;
.super Lcom/google/android/gms/internal/ads/zzfdr;
.source "com.google.android.gms:play-services-ads@@21.5.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcpj;Lcom/google/android/gms/internal/ads/zzfga;Lcom/google/android/gms/internal/ads/zzfeh;Lcom/google/android/gms/internal/ads/zzfje;Lcom/google/android/gms/internal/ads/zzchu;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/ads/zzfdr;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcpj;Lcom/google/android/gms/internal/ads/zzfga;Lcom/google/android/gms/internal/ads/zzfeh;Lcom/google/android/gms/internal/ads/zzfje;Lcom/google/android/gms/internal/ads/zzchu;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzcyi;Lcom/google/android/gms/internal/ads/zzddz;Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzddv;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfej;->zza:Lcom/google/android/gms/internal/ads/zzcpj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcpj;->zzd()Lcom/google/android/gms/internal/ads/zzcxx;

    move-result-object p1

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcxx;->zzd(Lcom/google/android/gms/internal/ads/zzddz;)Lcom/google/android/gms/internal/ads/zzcxx;

    .line 3
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzcxx;->zzc(Lcom/google/android/gms/internal/ads/zzdka;)Lcom/google/android/gms/internal/ads/zzcxx;

    return-object p1
.end method
