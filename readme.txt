詳細 Objective-C iPhoneアプリ開発 入門ノート / 大重美幸

iPhone5s iOS7 Xcode5.0.2

PART4 アシスタントエディタとクラス定義


.hで定義したメソッドやプロパティは外部からアクセス可能となる。
.mではそうならない。

----- Header File -----
#import <framework>
#import source file

// インターフェイスセクション ... クラス定義だね
@interface class名 : SuperClass名 <protocol>
{   
    // 複数のインスタンスで共有する変数
    // staticなクラス変数ってことかな〜
    インスタンス変数宣言
}

// 他のクラスから見えるよ
// @property (weak, nonatomic) NSString *msg;
// @property (assign) NSInteger *cnt;
// @property NSArray *arr;
プロパティ変数宣言

// + (void)beep;
// - (void)countup;
// - (NSString *)fullName:(NSString *)sei lastName:(NSString *)mei; <- この記述が慣れない...
メソッド宣言
@end


// プロパティの属性
// いろいろあるな〜おいおい...

// 値をどのように割り当てるかを指定する属性
// この指定もよくわからないな〜Objective-C独特な感じがする
assign 参照ではなく値を代入する
strong 強い参照(初期値)
weak 弱い参照
copy オブジェクトをコピーする

// アクセス権などを指定する属性
// デフォルトはreadwrite
// readonlyにする場合は、nonatomicを指定し、実装ファイルで@synthesize宣言とゲッタメソッドを定義します
readonly
readwrite

// アクセサメソッドに関する属性
// nonatomicにするケースがわからないな〜
nonatomic アトミックではない
getter=ゲッタ名 ゲッタメソッドを指定する
setter=セッタ名 セッタメソッドを指定する





----- Source File -----

#import header file


//
// ここから
// クラスエクステンション
// 自分しか使わないクラス、変数、メソッドならここに宣言してもいい
//
@interface class名 : SuperClass名 <protocol>
{   
    インスタンス変数宣言
}
プロパティ変数宣言
メソッド宣言
@end
// ここまで


@implementation class名

メソッド定義

@end





インスタンス変数
　インスタンスごとに違った値を保持する変数
　”インスタンス変数は、通常クラス自身の外からアクセスされることはない”
　以前は.hの@interfaceに記述していたが、いまは.mの@implementationに書くのが主流

