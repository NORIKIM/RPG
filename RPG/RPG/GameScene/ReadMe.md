## 캐릭터 이동

```swift
// 터치를 했을때 실행
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    for touch in touches {
        let location = touch.location(in: self) // 터치를 한 포인트
        Player.position = CGPoint(x: location.x, y: location.y) // 플레이어의 위치를 location으로 변경해라
    }
}
```

<img src="https://user-images.githubusercontent.com/31604976/75678389-e4cfd480-5cd0-11ea-9f4e-9bfb1908831a.gif">



## 컨트롤러

<img src="https://user-images.githubusercontent.com/31604976/86532965-c725ac80-bf08-11ea-87df-06913e623be1.gif">