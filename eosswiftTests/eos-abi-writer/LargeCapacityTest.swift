import Foundation
import XCTest

@testable import eosswift

class LargeCapacityTest: XCTestCase {
    
    let hexWriter = DefaultHexWriter()
    
    func testTimestamp() throws {
        
        // given
        let abiEncodingContainer = AbiEncodingContainer(capacity: 500)
        
        // when
        try abiEncodingContainer.encode("Chuck Norris doesn’t get compiler errors, the language changes itself to accommodate Chuck Norris.\n at the moment he lives at 432 Wiza Mountain, Aleenside, WY 75942-7897 \n\n<br> and YODA said: Clear your mind must be, if you are to find the villains behind this plot. \n\n witcher quote: Finish all your business before you die. Bid loved ones farewell. Write your will. Apologize to those you’ve wronged. Otherwise, you’ll never truly leave this world. \n\n Rick and Morty quote: It’s fine, everything is fine. Theres an infinite number of realities Morty and in a few dozen of those I got lucky and turned everything back to normal. \n\n SuperHero Aurora Ivy has power to Atmokinesis and Grim Reaping \n\n Harry Potter quote: Dark and difficult times lie ahead. Soon we must all face the choice between what is right and what is easy. \n\n and some Lorem to finish text: Esse recusandae modi provident et voluptatibus occaecati commodi nostrum sequi aut unde in sint pariatur dignissimos dignissimos quasi sunt beatae explicabo omnis dolorem quo ratione vel aut aliquam sint soluta quia modi quidem aut officia labore sed non nihil et rerum unde sunt at qui assumenda culpa quisquam vero eos ad voluptatem aut exercitationem fugit modi vel iusto impedit assumenda illum consequatur reprehenderit accusamus ut quod est est voluptatem cumque molestiae non dolorem asperiores modi culpa dolor delectus non alias laboriosam suscipit nobis perspiciatis similique quis ea nisi ratione laboriosam voluptatem molestias quas numquam qui doloribus officiis autem quidem debitis magni tenetur aut et incidunt dolores sunt est dolores unde dolor et dolorem voluptatum non sit aut sed ut quibusdam voluptas est ea eligendi excepturi et dolorem eius facilis reiciendis debitis totam voluptate mollitia dolore quisquam sint ut quidem omnis voluptatibus voluptatem accusantium tenetur hic vitae deserunt culpa sequi voluptate labore voluptas.")
        let hex = abiEncodingContainer.toData().hexEncodedString()
        
        // then
        XCTAssertEqual(hex, "850f436875636b204e6f7272697320646f65736ee28099742067657420636f6d70696c6572206572726f72732c20746865206c616e6775616765206368616e67657320697473656c6620746f206163636f6d6d6f6461746520436875636b204e6f727269732e0a20617420746865206d6f6d656e74206865206c69766573206174203433322057697a61204d6f756e7461696e2c20416c65656e736964652c2057592037353934322d37383937200a0a3c62723e20616e6420594f444120736169643a20436c65617220796f7572206d696e64206d7573742062652c20696620796f752061726520746f2066696e64207468652076696c6c61696e7320626568696e64207468697320706c6f742e200a0a20776974636865722071756f74653a2046696e69736820616c6c20796f757220627573696e657373206265666f726520796f75206469652e20426964206c6f766564206f6e6573206661726577656c6c2e20577269746520796f75722077696c6c2e2041706f6c6f67697a6520746f2074686f736520796f75e2809976652077726f6e6765642e204f74686572776973652c20796f75e280996c6c206e65766572207472756c79206c65617665207468697320776f726c642e200a0a205269636b20616e64204d6f7274792071756f74653a204974e28099732066696e652c2065766572797468696e672069732066696e652e2054686572657320616e20696e66696e697465206e756d626572206f66207265616c6974696573204d6f72747920616e6420696e20612066657720646f7a656e206f662074686f7365204920676f74206c75636b7920616e64207475726e65642065766572797468696e67206261636b20746f206e6f726d616c2e200a0a2053757065724865726f204175726f7261204976792068617320706f77657220746f2041746d6f6b696e6573697320616e64204772696d2052656170696e67200a0a20486172727920506f747465722071756f74653a204461726b20616e6420646966666963756c742074696d6573206c69652061686561642e20536f6f6e207765206d75737420616c6c2066616365207468652063686f696365206265747765656e207768617420697320726967687420616e64207768617420697320656173792e200a0a20616e6420736f6d65204c6f72656d20746f2066696e69736820746578743a2045737365207265637573616e646165206d6f64692070726f766964656e7420657420766f6c757074617469627573206f636361656361746920636f6d6d6f6469206e6f737472756d2073657175692061757420756e646520696e2073696e74207061726961747572206469676e697373696d6f73206469676e697373696d6f732071756173692073756e7420626561746165206578706c696361626f206f6d6e697320646f6c6f72656d2071756f20726174696f6e652076656c2061757420616c697175616d2073696e7420736f6c7574612071756961206d6f64692071756964656d20617574206f666669636961206c61626f726520736564206e6f6e206e6968696c20657420726572756d20756e64652073756e742061742071756920617373756d656e64612063756c706120717569737175616d207665726f20656f7320616420766f6c7570746174656d2061757420657865726369746174696f6e656d206675676974206d6f64692076656c20697573746f20696d706564697420617373756d656e646120696c6c756d20636f6e736571756174757220726570726568656e6465726974206163637573616d75732075742071756f64206573742065737420766f6c7570746174656d2063756d717565206d6f6c657374696165206e6f6e20646f6c6f72656d206173706572696f726573206d6f64692063756c706120646f6c6f722064656c6563747573206e6f6e20616c696173206c61626f72696f73616d207375736369706974206e6f626973207065727370696369617469732073696d696c697175652071756973206561206e69736920726174696f6e65206c61626f72696f73616d20766f6c7570746174656d206d6f6c6573746961732071756173206e756d7175616d2071756920646f6c6f7269627573206f6666696369697320617574656d2071756964656d2064656269746973206d61676e692074656e657475722061757420657420696e636964756e7420646f6c6f7265732073756e742065737420646f6c6f72657320756e646520646f6c6f7220657420646f6c6f72656d20766f6c7570746174756d206e6f6e2073697420617574207365642075742071756962757364616d20766f6c75707461732065737420656120656c6967656e64692065786365707475726920657420646f6c6f72656d206569757320666163696c6973207265696369656e646973206465626974697320746f74616d20766f6c757074617465206d6f6c6c6974696120646f6c6f726520717569737175616d2073696e742075742071756964656d206f6d6e697320766f6c75707461746962757320766f6c7570746174656d206163637573616e7469756d2074656e6574757220686963207669746165206465736572756e742063756c706120736571756920766f6c757074617465206c61626f726520766f6c75707461732e")
    }
}