.class Lcom/facebook/login/widget/ProfilePictureView$1;
.super Ljava/lang/Object;
.source "ProfilePictureView.java"

# interfaces
.implements Lcom/facebook/internal/ImageRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/ProfilePictureView;->sendImageRequest(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/widget/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/ProfilePictureView;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/internal/ImageResponse;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/login/widget/ProfilePictureView$1;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/login/widget/ProfilePictureView$1;->this$0:Lcom/facebook/login/widget/ProfilePictureView;

    invoke-static {v5, p1}, Lcom/facebook/login/widget/ProfilePictureView;->access$000(Lcom/facebook/login/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/login/widget/ProfilePictureView$1;"

    const-string v1, "onCompleted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
