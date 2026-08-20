.class public final synthetic Lcom/google/android/gms/internal/ads/zzdxx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbev;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfix;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zza:Lcom/google/android/gms/internal/ads/zzfix;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbgl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zza:Lcom/google/android/gms/internal/ads/zzfix;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgl;->zza()Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaA()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbfh;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgl;->zza()Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbfi;->zzd()Lcom/google/android/gms/internal/ads/zzbga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaA()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfix;->zzb:Lcom/google/android/gms/internal/ads/zzfiw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfiw;->zzb:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfio;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbfz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbfz;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfh;->zzb(Lcom/google/android/gms/internal/ads/zzbfz;)Lcom/google/android/gms/internal/ads/zzbfh;

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbgl;->zze(Lcom/google/android/gms/internal/ads/zzbfh;)Lcom/google/android/gms/internal/ads/zzbgl;

    return-void
.end method
